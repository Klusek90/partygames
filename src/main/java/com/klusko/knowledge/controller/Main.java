package com.klusko.knowledge.controller;

import com.klusko.knowledge.model.ChatMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class Main {

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @GetMapping("/")
    public String index() {
        return "main";
    }

    @GetMapping("/task")
    public String task() {
        return "task";
    }

    @GetMapping("/room/{roomNumber}")
    public String roomPage(@PathVariable String roomNumber, Model model) {
        model.addAttribute("roomNumber", roomNumber);
        return "room";
    }

    @MessageMapping("/chat.message")
//    @SendTo("/topic/{room}")
    public void sendMessage(@Payload ChatMessage chatMessage) {
        String room = chatMessage.getRoom();
        messagingTemplate.convertAndSend("/topic/"+room, chatMessage);
    }

    @MessageMapping("/chat.addUser")
    @SendTo("/topic/{room}")
    public void addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor) {
        headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
        String room = getRoom(chatMessage);
        messagingTemplate.convertAndSend("/topic/" + room, chatMessage);
    }

    private static String getRoom(ChatMessage chatMessage) {
        return chatMessage.getRoom();
    }
}
