

 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Navigare</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Administrator</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                  <li><a href="../index.php">Vizitează site-ul</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Cristina<!-- <?php echo $username; ?> -->
                    <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profil</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="index.php?logout"><i class="fa fa-fw fa-power-off"></i> Delogare</a>
                        </li>
                    </ul>
                </li>
            </ul>
             <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index.php"><i class="fa fa-fw fa-dashboard"></i> Tablă</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-send"></i> Postări  <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="posts.php?source=view_post">Vezi postările</a>
                            </li>
                            <li>
                                <a href="posts.php?source=add_new">Adaugă postare nouă</a>
                            </li>

                        </ul>
                    </li>
                       <li>
                        <a href="categories.php"><i class="fa fa-fw fa-suitcase"></i> Categorii</a>
                    </li>
                    <li>
                        <a href="comment.php"><i class="fa fa-fw fa-comment"></i> Comentarii </a>
                    </li>
                       <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#users"><i class="fa fa-fw fa-users"></i> Utilizatori <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="users" class="collapse">
                            <li>

                                <a href="users.php">Vezi toți utilizatorii</a>
                            </li>
                            <li>
                                <a href="users.php?source=add_user">Adaugă utilizator nou</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="profile.php"><i class="fa fa-fw fa-user"></i> Profil</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
       <script src="bootstrap/js/jquery.js"></script>