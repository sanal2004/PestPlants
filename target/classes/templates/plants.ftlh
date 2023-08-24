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
<h4>Перечень сорных растений</h4>
<form action="/" method="get">
    Поиск по названию культурного растения: <input type="text" name="culturename"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list plants as plant>
    <div  >
        <p><b>
                <b>${plant.id}</b>. ${plant.pestname}</b>| <a href="/plant/${plant.id}">Подробнее...</a>
            <br>
            (<b>${plant.culturename}</b>) </p>
    </div>
<#else>
    <h3>Данные отсутствуют</h3>
</#list>
<hr>
<h3>Добавить в базу сорное растение</h3>
<form action="/plant/create" method="post">
    Название культурного растения: <input type="text" name="culturename"/><br><br>
    Название сорного растения: <input type="text" name="pestname"/><br><br>
    Фаза развития культуры: <input type="text" name="effiquencyname"/><br><br>
    Экономический порог вредоносности, шт/м2: <input type="text" name="phasename"/><br><br>
    <input type="submit" value="Добавить"/>
</form>
</div>
</main>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

<footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">

    </ul>
    <p class="text-center text-body-secondary">ФГБОУ ВО "КалмГУ"</p>
</footer>
</html>