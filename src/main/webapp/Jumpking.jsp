<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jump King</title>
    <link rel="bigcut icon" href="img/game.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/phaser/3.60.0/phaser.min.js"
        integrity="sha512-YQL0GVx/Too3vZjBl9plePRIYsRnd1s8N6QOvXPdZ+JMH2mtRTLQXGUDGjNW6zr1HUgcOIury67IvWe91oeEwQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.2/css/all.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="js/GameStart_scene.js"></script>
    <script src="js/move.js"></script>
    <script src="js/GameOver_scene.js"></script>
    <script src="js/Rank_scene.js"></script>

    <style>
        #container {
            /* max-width: 1000px; */
            width: 500px;
            height: 500px;
            margin: auto;
            overflow-y: hidden;
        }

        .gamemove {
            margin-top: 50px;

        }

        .controll {
            font-size: 35px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div id="container">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="gamemove text-center">
                    <h1>조작법</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="controll">
                    이동　:　
                    <img src="img/leftright.png" alt="">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="controll">
                    점프　:　
                    <img src="img/spacebar.jpg" alt="" width="120px">
                </div>
            </div>
        </div>
    </div>


    <script>
        let option = {
            type: Phaser.AUTO,
            parent: "container",
            width: "100%",
            height: "100%",
            physics: {
                default: "arcade",
                arcade: {
                    gravity: {
                        y: 0
                    },
                    debug: false
                }
            },
            scene: [GameStartScene, MoveScene, GameOverScene, RankScene]
        };
        let game = new Phaser.Game(option);
    </script>
</body>

</html>