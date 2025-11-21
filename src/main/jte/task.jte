@param String roomNumber= "1"

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Testasaurus</title>
   <link rel="stylesheet" href="/dark-taskasaurus.css"/>
   <link rel="stylesheet" href="/taskasaurus.css"/>
   <link rel="stylesheet" href="/bootstrap-clockpicker/bootstrap-clockpicker.min.css"/>
   <link rel="stylesheet" href="/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.1/css/datepicker3.css"/>



</head>
<body style="color: #f5dea3; background-color: #252525;">

<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container">
    <div class="navbar-header">
      <button onclick="dontClickThat('top')" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Testasaurus Rex</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav" onclick="dontClickThat('list')">
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Tasks</a></li>
        <li><a href="#">Queues</a></li>
        <li><a href="#">Views</a></li>
        <li><a href="#">Users</a></li>
        <li><a href="#">Tags</a></li>
      </ul>
      <div class="navbar-form navbar-right" >
        <a onclick="dontClickThat('nav')" class="btn btn-primary" type="submit">Sign out</a>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="#">User name</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<nav class="navbar navbar-default navbar-fixed-top navbar-fixed-top-2" style="margin-top: 50px;">
  <div class="container">
    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" onclick="dontClickThat('chevron')" >
        <span class="glyphicon glyphicon-chevron-up"></span>
      </a>&nbsp;
      <a class="navbar-brand" href="#">Task 265145</a>
    </div>
    <div id="navbar-task" class="collapse navbar-collapse">
      <div class="navbar-form navbar-left">
        <div class="form-group">
          <p class="form-control-static" style="color:#777;">Assigned to </p>
        </div>

        <div class="form-group">
          <select class="form-control select2" style="width: 150px" name="assigneeId"><option>Programming</option></select>
          <button class="btn btn-primary"  onclick="dontClickThat('reassing')" >Reassign</button>
        </div>
        <button id="uploadModalBtn" class="btn btn-primary" style="margin-left: 10px"  onclick="dontClickThat('upload')" >Uploader</button>
      </div>

      <div>
        <form class="navbar-form navbar-left navbar-narrow" style="margin-left: 25px" action="#" method="post">
          <div id="svnBranchUrl" class="invisible"></div>
          <div class="input-group" style="width:275px; float: right">
            <div class="input-group-btn">
              <button data-toggle="tooltip" id="createBranchBtn" title="Create SVN Branch" data-placement="bottom" type="submit" class="btn btn-success disabled">Create Branch</button>
            </div>
            <input id="svnbranch" name="svnbranch" readonly="readonly" type="text" class="form-control" value="Loading..."/>
            <div class="input-group-btn">
              <button  type="button" id="copy-button" class="btn btn-default btn-copy js-tooltip js-copy invisible" data-clipboard-target="#svnbranch" data-toggle="tooltip" data-placement="bottom" title="Copy to clipboard">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24"><path d="M17,9H7V7H17M17,13H7V11H17M14,17H7V15H14M12,3A1,1 0 0,1 13,4A1,1 0 0,1 12,5A1,1 0 0,1 11,4A1,1 0 0,1 12,3M19,3H14.82C14.4,1.84 13.3,1 12,1C10.7,1 9.6,1.84 9.18,3H5A2,2 0 0,0 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5A2,2 0 0,0 19,3Z" /></svg>
              </button>
            </div>
          </div>
        </form>
      </div>

      <div style="margin-top: 7px">
          <button  onclick="dontClickThat('play')"  data-toggle="tooltip" title="Start" data-placement="bottom" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-play"></span></button>
          <button  onclick="dontClickThat('pause')"  data-toggle="tooltip" title="Pause" data-placement="bottom" type="submit" class="btn btn-warning"><span class="glyphicon glyphicon-pause"></span></button>
          <button  onclick="dontClickThat('stop')"  data-toggle="tooltip" title="Stop" data-placement="bottom" type="submit" class="btn btn-danger" ><span class="glyphicon glyphicon-stop"></span></button>
          <button  onclick="dontClickThat('estimate')"  data-toggle="tooltip" title="Estimate" data-placement="bottom" type="submit" class="btn btn-info"><span class="glyphicon glyphicon-time"></span></button>
      </div>
    </div>
  </div>
</nav>

<div class="container">
      <div class="bottom-buffer">
        <h3>
          <span><i id="favouriteBtn"></i>Taskasaurus playground test</span>
          <small style="color: #f5dea3;" >created by <a style="color: #f5dea3;"> Datagraphic</a></small>
          <small style="color: #f5dea3;" class="pretty-date"data-toggle="tooltip" data-placement="top">34 minutes ago</small>
          <small ><a style="color: #f5dea3;"><span class="glyphicon glyphicon-pencil"></span></a></small>
          <span class="label label-success">In Progress</span>
          <span class="label label-warning">Paused</span>
        </h3>

        <span style="font-size: 16pt" class="glyphicon glyphicon-edit"></span>

        <div class="progress" data-toggle="tooltip" data-placement="top" style="margin-top: 2%">
          <div class="progress-bar" role="progressbar" style="width: 30%;">
            30%
          </div>
        </div>
      </div>
      <p>The task is to run a small experiment to see how our WebSockets behave when locked inside the friendly walls of a LAN. Think of it as a local stress-test adventure: we poke the sockets, they (hopefully) poke back, and we observe whether the whole thing stays alive and chatty.</p>
      <p>In short — a quick LAN-side handshake check to make sure our real-time communication doesn’t panic under local conditions. </p>
      <hr style="border-top: 1px solid #eee;">
      <div style="float: left; margin-right: 1.5%" onclick="dontClickThat('comment')">
          <input type="checkbox" id="Comments" >
          <span for="Comments">Comments</span>
      </div>
        <div style="float: left; margin-right: 1.5%" onclick="dontClickThat('attachment')">
          <input type="checkbox" id="Attachments" >
          <span for="Attachments ">Attachments</span>
        </div>
        <div style="float: left; margin-right: 1.5%"  onclick="dontClickThat('assign')">
              <input type="checkbox" id="Assignments">
              <span for="Assignments">Assignments</span>
        </div>
        <div style="float: left; margin-right: 1.5%"  onclick="dontClickThat('prio')">
              <input type="checkbox" id="Prioritisations">
              <span for="Prioritisations ">Prioritisations</span>
        </div>
        <div style="float: left; margin-right: 1.5%"  onclick="dontClickThat('work')">
              <input type="checkbox" id="Work">
              <span for="Work">Work</span>
        </div>
        <div style="float: left; margin-right: 1.5%"  onclick="dontClickThat('edit')">
          <input type="checkbox" id="Edits">
          <span for="Edits">Edits</span>
    </div>
    <div style="float: left; margin-right: 1.5%" onclick="dontClickThat('auth')">
          <input type="checkbox" id="Author">
          <span for="Author">Author Changes </span>
    </div >
    <div style="float: left; margin-right: 1.5%"  onclick="dontClickThat('applay')">
          <button class="btn-primary btn">Apply</button>
    </div>

    <div style="clear:both">

        <ul id="messageArea">

        </ul>
        <form id="messageForm" name="messageForm">
            <div class="form-group">
                <div class="input-group clearfix">
<%--                    <textarea id="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>--%>
                    <button onclick="dontClickThat()" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>

            <div class="form-group">
                <a style="color:wheat"  target="_blank" class="help">editing help</a>
                <textarea id="main-codemirror" rows="3" class="form-control" placeholder="Comment"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>

        <hr style="border-top: 1px solid #eee;">

        <footer id="footer">
            <p>Copyright &copy; Datagraphic Ltd 2025</p>
        </footer>
    </div>
</div>





<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="/main.js"></script>

<script>
    let countMe = 0;
    let text = [
        "Dont click that!",
        "Dont click that .. please",
        "Seriously? You’re still clicking?",
        "Ok.. that a bit annoying ..",
        "Didnt you have training to not click thing around page?",
        "This is your final-final warning. One more click and I will disconnect you."
    ]

    let othercount = 0;
    let otherClick = [
        "Will you stop clicking wierd things?",
        "Are you planning to click everything on the page?",
        "Seriously?.. ",
        "Omg.. dude .. just relax and enjoy the ride"
    ]

    let previous = "";

    function dontClickThat(clicked){
        if(previous==="" || previous === clicked){
            alert(text[countMe])
            if (countMe < 4){
                countMe ++;
            }
        } else {
           alert(otherClick[othercount])
            if(othercount< 3){
                othercount++;
            }
           countMe = 1;
        }

        console.log(countMe)
    }


</script>
</body>
</html>