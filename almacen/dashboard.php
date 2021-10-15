<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maxium-scale=1">
    <title>Document</title>
    <!--Importando libreria line-awesome-->
    <link rel="stylesheet" href="./line-awesome1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
        <div class="sidebar-brand">
        <h2><span id="icono" class="lab la-accusoft"></span>App</h2>
        </div>
        
        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="" class="active"><span class="las la-igloo"></span>
                    <span>Dashboard</span></a>
                </li>

                <li>
                    <a href="regentregas.php"><span class="las la-users"></span>
                    <span>Stock</span></a>
                </li>

                <li>
                    <a href=""><span class="las la-clipboard-list"></span>
                    <span>Projects</span></a>
                </li>

                <li>
                    <a href=""><span class="las la-shopping-bag"></span>
                    <span>Orders</span></a>
                </li>
                
                <li>
                    <a href=""><span class="las la-receipt"></span>
                    <span>Inventory</span></a>
                </li>
 
                <li>
                    <a href=""><span class="las la-user-circle"></span>
                    <span>Accounts</span></a>
                </li>
                
                <li>
                    <a href=""><span class="las la-clipboard-list"></span>
                    <span>Tasks</span></a>
                </li>
                <li>
                    <a href="logout.php"><span class="las la-power-off"></span>
                    <span>Close</span></a>
                </li>
            </ul>
        </div>

    </div>

<div class="main-content">
    <header>
        <h2>
            <div>
                <label for="nav-toggle">
                    <span class="las la-bars"></span>
                </label>
                Dashboard
            </div>
            </h2>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="Search here">
            </div>

    <div class="user-wrapper">
                <img src="img/2.jpg" width="40px" alt="40px">
        <div>
            <h2>Jane Doe</h2>
            <small>Super admin</small>
        </div>
    </div>
    </header>

    <main>
          <div class="cards">
              <div class="card-single">
                  <div>
                    <h1>54</h1>
                    <span>Customers</span>
                  </div>
                  <div>
                <span class="las la-users"></span>
                 </div>
              </div>



              <div class="card-single">
                <div>
                  <h1>79</h1>
                  <span>Projects</span>
                </div>
                <div>
               <span class="las la-clipboard-list"></span>
               </div>
            </div>


            <div class="card-single">
                <div>
                  <h1>124</h1>
                  <span>Orders</span>
                </div>
                <div>
               <span class="las la-shopping-bag"></span>
               </div>
            </div>

            <div class="card-single">
                <div>
                  <h1>$6K</h1>
                  <span>Income</span>
                </div>
                <div>
               <span class="lab la-google-wallet"></span>
               </div>
            </div>
          </div>
          <div class="recent-grid">
              <div class="projects">
                 <div class="card">
                    <div class="card-header">
                        <h2>Recent Projects</h2>

                        <button>See All <span class="las la-arrow-right"></span></button>
                    </div>
                        <div class="card-body">
                           <div class="table-responsive">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Project Tittle</td>
                                        <td>Depart</td>
                                        <td>Status</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>UI/UX Design</td>
                                        <td>UI Team</td>
                                        <td>
                                            <span class="status purple"></span>
                                            in progress
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Web development</td>
                                        <td>Frontend</td>
                                        <td>
                                            <span class="status pink" ></span>
                                            in progress
                                        </td>
                                    </tr>
                                    <tr>
                                     <td>Ushop app</td>
                                     <td>Movile Team</td>
                                        <td>
                                            <span class="status orange"></span>
                                            pending
                                        </td>
                                 </tr>
 
                                 <tr>
                                     <td>UI/UX Design</td>
                                     <td>UI Team</td>
                                     <td>
                                         <span class="status purple"></span>
                                         in progress
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>Web development</td>
                                     <td>Frontend</td>
                                     <td>
                                         <span class="status pink" ></span>
                                         in progress
                                     </td>
                                 </tr>
                                 <tr>
                                  <td>Ushop app</td>
                                  <td>Movile Team</td>
                                     <td>
                                         <span class="status orange"></span>
                                         pending
                                     </td>
                              </tr>
                                </tbody>
                            </table>
                           </div>
                        </div> 
                  </div>
              </div>
              <div class="customers">
                <div class="card">
                    <div class="card-header">
                        <h3>New Customers</h3>

                        <button>See All <span class="las la-arrow-right"></span></button>
                    </div>
                        <div class="card-body">
                            <div class="customer">
                             <div class="info">
                                <img src="img/2.jpg" width="40px" height="40px" alt="">
                                <div>
                                    <h4> Lewis S Cuningham</h4>
                                    <small> CEO expert</small>
                                </div>
                             </div>
                             <div>
                                 <span class="las la-user-circle"></span>
                                 <span class="las la-comment"></span>
                                 <span class="las la-phone"></span>
                             </div>
                            </div>
--------------------------------------------------------------
                            <div class="customer">
                                <div class="contact">
                                   <img src="img/2.jpg" width="40px" height="40px" alt="">
                                   <div>
                                       <h4> Lewis S Cuningham</h4>
                                       <small> CEO expert</small>
                                   </div>
                                </div>
                                <div>
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                               </div>

--------------------------------------------------------------
                            <div class="customer">
                                <div>
                                   <img src="img/2.jpg" width="40px" height="40px" alt="">
                                   <div>
                                       <h4> Lewis S Cuningham</h4>
                                       <small> CEO expert</small>
                                   </div>
                                </div>
                                <div>
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                               </div>


                        </div>
                    </div>
              </div>
          </div>
    </main>
</div>
</body>
</html>