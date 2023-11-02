<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Admin Dashboard</title>
        <link rel="icon" href="https://seeklogo.com/images/M/movie-time-cinema-logo-8B5BE91828-seeklogo.com.png" />

        <style>
            .cardlist:hover {
                scale: 1.01;
                background-color: burlywood;
            }
        </style>
    </head>

    <body style="background-color: antiquewhite;">

        <jsp:include page="header.jsp" />


        <div class="d-flex flex-row align-items-center"
            style="margin-top: 170px; margin-bottom: 170px; margin-left: 100px;margin-right: 100px;">

            <div class="card cardlist mr-5" style='width:18rem;'>
                <div class="ml-3 mt-2  mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-people-fill mr-3" viewBox="0 0 16 16">
                        <path
                            d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" />
                    </svg>

                </div>
                <div class="card-body">
                    <h4 class="card-title" style='font-size:18px'>User Management</h4>
                    <p class="card-text mb-4" style='font-size:15px;color:gray'>Manage all the Users
                        and their details</p>
                    <a href='' class="card-link" style=" text-decoration: none"> Explore
                        &gt;&gt;</a>
                </div>
            </div>

            <div class="card cardlist mr-5" style=' width:18rem'>
                <div class="ml-3 mt-2  mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-film mr-3" viewBox="0 0 16 16">
                        <path
                            d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z" />
                    </svg>

                </div>
                <div class="card-body">
                    <h4 class="card-title" style='font-size:18px'>Movie Management</h4>
                    <p class="card-text mb-4" style='font-size:15px;color:gray'>Manage all the Movie
                        and their details</p>
                    <a href='MovieAdminList.jsp' class="card-link" style=" text-decoration: none"> Explore
                        &gt;&gt;</a>
                </div>
            </div>

            <div class="card cardlist mr-5" style=' width:18rem'>
                <div class="ml-3 mt-2  mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-camera-reels mr-3" viewBox="0 0 16 16">
                        <path d="M6 3a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM1 3a2 2 0 1 0 4 0 2 2 0 0 0-4 0z" />
                        <path
                            d="M9 6h.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 7.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 16H2a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h7zm6 8.73V7.27l-3.5 1.555v4.35l3.5 1.556zM1 8v6a1 1 0 0 0 1 1h7.5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1z" />
                        <path d="M9 6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM7 3a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                    </svg>

                </div>
                <div class="card-body">
                    <h4 class="card-title" style='font-size:18px'>TV Series Management</h4>
                    <p class="card-text mb-4" style='font-size:15px;color:gray'>Manage all the TV Series
                        and their details</p>
                    <a href='TVSeriesAdminList.jsp' class="card-link" style=" text-decoration: none"> Explore
                        &gt;&gt;</a>
                </div>
            </div>

            <div class="card cardlist" style=' width:18rem'>
                <div class="ml-3 mt-2  mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-stripe mr-3" viewBox="0 0 16 16">
                        <path
                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2Zm6.226 5.385c-.584 0-.937.164-.937.593 0 .468.607.674 1.36.93 1.228.415 2.844.963 2.851 2.993C11.5 11.868 9.924 13 7.63 13a7.662 7.662 0 0 1-3.009-.626V9.758c.926.506 2.095.88 3.01.88.617 0 1.058-.165 1.058-.671 0-.518-.658-.755-1.453-1.041C6.026 8.49 4.5 7.94 4.5 6.11 4.5 4.165 5.988 3 8.226 3a7.29 7.29 0 0 1 2.734.505v2.583c-.838-.45-1.896-.703-2.734-.703Z" />
                    </svg>

                </div>
                <div class="card-body">
                    <h4 class="card-title" style='font-size:18px'>Payment Management</h4>
                    <p class="card-text mb-4" style='font-size:15px;color:gray'>Manage all the Payment
                        and their details</p>
                    <a href='' class="card-link" style=" text-decoration: none"> Explore
                        &gt;&gt;</a>
                </div>
            </div>

        </div>


        <jsp:include page="footer.jsp" />

    </body>

    </html>