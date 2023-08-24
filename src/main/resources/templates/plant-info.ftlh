<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>База данных сорных растений</title>
</head>
<body>
<header data-bs-theme="dark">

    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <strong>ЭКОНОМИЧЕСКИЕ ПОРОГИ ВРЕДОНОСНОСТИ
                    СОРНЫХ РАСТЕНИЙ В РОСТОВСКОЙ ОБЛАСТИ</strong>
            </a>
        </div>
    </div>
</header>
<hr>
<main class="container">
    <div class="my-3 p-3 bg-body rounded shadow-sm">
<h4>Подробная информация</h4>
<b>Название сорного растения: </b>${plant.pestname}<br>
<b>Фаза развития культуры: </b>${plant.phasename}<br>
<b>Экономический порог вредоносности, шт/м2: </b>${plant.effiquencyname}<br>
<hr>
<form action="/plant/delete/${plant.id}" method="post">
    <input type="submit" value="Удалить"/>
</form>
    </div>
</main>

<footer class="footer mt-auto py-3 bg-body-tertiary">
    <div class="container">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a  class=" px-2 text-body-secondary">г. Элиста, ул. Пушкина 11,</a></li>
            <li class="nav-item"><a  class=" px-2 text-body-secondary">телефон (84722) 4-10-05, </a></li>
            <li class="nav-item"><a  class=" px-2 text-body-secondary">e-mail: uni@kalmsu.ru</a></li>
        </ul>
        <p class="text-center text-body-secondary">© 2023 KalmSU</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>


</html>