<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
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
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Taskasaurus Rex</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Tasks</a></li>
        <li><a href="#">Queues</a></li>
        <li><a href="#">Views</a></li>
        <li><a href="#">Users</a></li>
        <li><a href="#">Tags</a></li>
      </ul>
      <form class="navbar-form navbar-right" action="#" method="post">
        <button class="btn btn-primary" type="submit">Sign out</button>
      </form>
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
      <a class="navbar-brand" href="#">
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
          <button class="btn btn-primary">Reassign</button>
        </div>
        <button id="uploadModalBtn" class="btn btn-primary" style="margin-left: 10px">Uploader</button>
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
              <button type="button" id="copy-button" class="btn btn-default btn-copy js-tooltip js-copy invisible" data-clipboard-target="#svnbranch" data-toggle="tooltip" data-placement="bottom" title="Copy to clipboard">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24"><path d="M17,9H7V7H17M17,13H7V11H17M14,17H7V15H14M12,3A1,1 0 0,1 13,4A1,1 0 0,1 12,5A1,1 0 0,1 11,4A1,1 0 0,1 12,3M19,3H14.82C14.4,1.84 13.3,1 12,1C10.7,1 9.6,1.84 9.18,3H5A2,2 0 0,0 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5A2,2 0 0,0 19,3Z" /></svg>
              </button>
            </div>
          </div>
        </form>
      </div>

      <div style="margin-top: 7px">
        <button data-toggle="tooltip" title="Estimate" data-placement="bottom" type="submit" class="btn btn-info"><span class="glyphicon glyphicon-time"></span></button>
        <button data-toggle="tooltip" title="Stop" data-placement="bottom" type="submit" class="btn btn-danger" ><span class="glyphicon glyphicon-stop"></span></button>
        <button data-toggle="tooltip" title="Pause" data-placement="bottom" type="submit" class="btn btn-warning"><span class="glyphicon glyphicon-pause"></span></button>
        <button data-toggle="tooltip" title="Start" data-placement="bottom" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-play"></span></button>
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

      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec suscipit urna. Sed non pulvinar orci, sed luctus libero.</p>
      <p>Suspendisse eu pharetra diam, viverra rutrum nisi. Mauris quis mi volutpat, facilisis nulla non, efficitur ligula. </p>
</div>



    <div id="footer-div" style="position: fixed;bottom: 0px;left: 0px;right: 0px;">
      <footer id="footer">
        <p>Copyright &copy; Datagraphic Ltd 2025</p>
      </footer>
    </div>

</body>
</html>