<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purse.aspx.cs" Inherits="Mexm.IO_webForms.purse" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>MEXM.IO</title>
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1 ">
    <!--, maximum-scale=1.0, user-scalable=0-->
    <!-- Стили CSS-->
    <link href="/css/style.min.css" rel="stylesheet" />
    <!-- Скривты JavaScript-->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
    <script src="/js/script.min.js"></script>
    <!-- Иконка-->
    <link rel="shortcut icon" href="/img/favicon.png" type="image/png">
</head>
<body class="list">
    <div class="wrapper-list">
        <header class="header">
            <div class="header__wrapper _container">
                <div class="header__logo">
                    <picture><source srcset="img/logo.svg" type="image/webp"><img src="img/logo.svg" alt="logo"></picture>
                </div>
                <nav class="header__nav main-nav">
                    <div class="main-nav__wrapper">
                        <div class="main-nav__header">
                            <p>Меню</p>
                        </div>
                        <ul class="nav-first">
                            <li>
                                <a href="#">Проводник <span></span></a>
                                <ul class="nav-second">
                                    <li>
                                        <a href="#">Bitcoin<span></span></a>
                                        <div class="nav-third">
                                            <ul>
                                                <li>Блокчейн</li>
                                                <li><a href="#">Блоки</a></li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                            <ul>
                                                <li>Мемпул</li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">Ethereum<span></span></a>
                                        <div class="nav-third">
                                            <ul>
                                                <li>Блокчейн</li>
                                                <li><a href="#">Блоки</a></li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                            <ul>
                                                <li>Мемпул</li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#">Litecoin<span></span></a>
                                        <div class="nav-third">
                                            <ul>
                                                <li>Блокчейн</li>
                                                <li><a href="#">Блоки</a></li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                            <ul>
                                                <li>Мемпул</li>
                                                <li><a href="#">Транзакции</a></li>
                                                <li><a href="#">Выходы</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Сервисы <span></span></a>
                                <ul class="nav-second">
                                    <li>
                                        <a href="#">Bitcoin</a>
                                    </li>
                                    <li>
                                        <a href="#">Ethereum</a>
                                    </li>
                                    <li>
                                        <a href="#">Litecoin</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Другое <span></span></a>
                                <ul class="nav-second">
                                    <li>
                                        <a href="#">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="#">Связаться с нами</a>
                                    </li>
                                    <li>
                                        <a href="#">Политика конфиденциальности</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <div class="main-nav__footer footer-nav">
                            <div class="footer-nav__language">
                                <a href="#">
                                    <picture><source srcset="img/icon/aside-language.svg" type="image/webp"><img src="img/icon/aside-language.svg" alt="logo"></picture>
                                    <span>Язык</span>
                                </a>
                            </div>

                        </div>
                    </div>

                </nav>

                <div class="header__form not-search">
                    <div class="header__form-wrapper form-wrapper">
                        <input type="search" placeholder="Поиск в блокчейн">
                        <button class="main-unit__button"></button>
                    </div>
                </div>
                <div class="burger">
                    <span></span>
                </div>

                <div class="header__plug"></div>

            </div>
        </header>



        <div class="content">
            <div class="content__wrapper _container">
                <div class="purse">
                    <div class="purse__header header-content">
                        <div class="bread-crumbs">
                            <div class="bread-crumbs__wrapper">
                                <div class="bread-crumbs__text">
                                    <p class="bread-crumbs__last"><a href="#"><span></span>Bitcoin</a></p>
                                </div>
                            </div>
                            <div class="bread-crumbs__wrapper bread-last">
                                <div class="bread-crumbs__text ">
                                    <p class="bread-crumbs__last">
                                        <a href="#"><%: Address %></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="super-link">
                            <a href="#">
                            <span class="super-link__span-text">
                                Ссылка
                            </span>
                            <span class="super-link__span">
                                <picture><source srcset="/img/icon/super-link.svg" type="image/webp"><img src="/img/icon/super-link.svg" alt="link"></picture>
                            </span></a>
                        </div>
                    </div>
                    <div class="purse__body block-wrapper">
                        <div class="purse-box">
                            <div class="block-wrapper__header">
                                <h2>Общая информация</h2>
                            </div>
                            <div class="purse-box__body body-purse">
                                <div class="body-purse__address address">
                                    <div class="address__ad">
                                        <div class="address__wrapper">
                                            <p class="p-title">Адрес</p>
                                        </div>
                                        <p class="purse-box__key key-blue">
                                            <%: Address %>
                                        <span class="key-icon">
                                                <picture><source srcset="/img/purse/icon.svg" type="image/webp"><img src="/img/purse/icon.svg" alt="icon"></picture>
                                            </span>
                                        </p>
                                    </div>
                                    <div class="address__balance">
                                        <div class="address__wrapper">
                                            <p class="p-title">Баланс</p>
                                        </div>
                                        <p class="purse-box__key">
                                            <span><%: Math.Truncate(Balance) %>.<i><%: BalanceAfter %></i> BTC</span>
                                       
                                        <span><%:Math.Truncate(BalanceUSD) %>.<i><%: BalanceUSDAfter %></i> USD</span>
                                        </p>
                                    </div>
                                    <div class="address__activity">
                                        <div class="address__wrapper">
                                            <p class="p-title">Активность</p>
                                        </div>
                                        <p class="purse-box__key">
                                            <span>6 часов назад</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="body-purse__info info purse-non">
                                    <div class="info__spent">
                                        <div class="info__logo">
                                            <picture><source srcset="/img/purse/spent.svg" type="image/webp"><img src="/img/purse/spent.svg" alt="spent"></picture>
                                        </div>
                                        <div class="info__body">
                                            <p class="p-title">Всего получено</p>
                                            <div class="info__price">
                                                <p><%: TotalReceiving %> BTC</p>
                                                <p><%: TotalReceivingUSD %> USD</p>
                                            </div>
                                            <p class="p-title">Первое / последнее получение</p>
                                            <p class="info__time">год назад / 6 часов назад</p>
                                        </div>
                                    </div>
                                    <div class="info__received">
                                        <div class="info__logo">
                                            <picture><source srcset="/img/purse/received.svg" type="image/webp"><img src="/img/purse/received.svg" alt="received"></picture>
                                        </div>
                                        <div class="info__body">
                                            <p class="p-title">Всего отправлено</p>
                                            <div class="info__price">
                                                <p><%: TotalPending %> BTC</p>
                                                <p><%: TotalPendingUSD %> USD</p>
                                            </div>
                                            <p class="p-title">Первое / последнее получение</p>
                                            <p class="info__time">год назад / 6 часов назад</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="body-purse__type type purse-non">
                                    <div class="type__wrapper">
                                        <div class="type__left">
                                            <p class="p-title">Тип Адреса</p>
                                        </div>
                                        <div>
                                            <p class="p-title">scripthash</p>
                                        </div>
                                    </div>
                                    <div class="type__wrapper textarea">
                                        <div class="type__left type__textarea">
                                            <p class="p-title">Скрипт</p>
                                        </div>
                                        <div class="w-textarea">
                                            <textarea disabled>OP_HASH160 2beec605c9a6512f55fe93ad76753e24fc8579b0 OP_EQUAL</textarea>
                                        </div>
                                        <div class="type__button">
                                            <ul>
                                                <li>
                                                    <button class="active-type">OP</button></li>
                                                <li>
                                                    <button>Bin</button></li>
                                                <li>
                                                    <button>Hex</button></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="type__wrapper">
                                        <div class="type__left">
                                            <p class="p-title">Количество транзакций</p>
                                        </div>
                                        <div>
                                            <p class="p-title"><%: TransactionsCount %></p>
                                        </div>
                                    </div>
                                    <div class="type__wrapper">
                                        <div class="type__left">
                                            <p class="p-title">
                                                <span>Количество выходов</span> / <span>Количество непотраченных выходов </span>
                                            </p>
                                        </div>
                                        <div>
                                            <p class="p-title">
                                                <span>362</span> / <span>349</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="body-purse__button ">
                                    <a href="#">Показать детали</a>
                                </div>
                            </div>
                        </div>
                        <div class="qr-code">
                            <div class="block-wrapper__header">
                                <h2>QR-код</h2>
                            </div>
                            <div class="qr-code__body">
                                <picture><source srcset="https://api.qrserver.com/v1/create-qr-code/?size=260x260&data=<%: Address %>" type="image/webp"><img src="https://api.qrserver.com/v1/create-qr-code/?size=260x260&data=<%: Address %>" alt=""></picture>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="transactions">
                    <div class="transactions__wrapper block-wrapper">
                        <div class="block-wrapper__header">
                            <h2>Транзакции</h2>
                        </div>
                        <div class="transactions__body ">
                            <div class="div-transactions">
                                <div class="div-transactions__wrapper" style="display: <%: ShowTrans1 %>">
                                    <div class="div-transactions__head t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title">Хэш</p>
                                        </div>
                                        <div class="t-row__big">
                                            <p class="div-transactions__hesh">
                                                <a href="#"><%:Trans1Hash %></a>
                                            </p>
                                        </div>
                                        <div class="t-row__small">
                                            <div>
                                                <p class="div-transactions__time"><%:Trans1Time %></p>
                                            </div>
                                            <div style="display: <%:Trans1ConfirmationsVisible %>" class="div-transactions__confirmation">
                                                <span class="<%:Trans1ConfirmationsHTMLClass %>"><%:Trans1ConfirmationsHTMLText %></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__body t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title"></p>
                                        </div>
                                        <div class="t-row__big">
                                            <div class="div-transactions__name">
                                                <p>Отправитель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">

                                                    <% var count1left = MexmioAPITransaction1.result.vin.Count;
                                                        for (int i = 0; i < count1left; i++)
                                                        {
                                                            Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction1.result.vin[i].inputAddress+"\">" + MexmioAPITransaction1.result.vin[i].inputAddress + "</a></li>");
                                                        }
                                                    %>

                                                    <%--  <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">

                                                    <%  var count1leftx = MexmioAPITransaction1.result.vin.Count;
                                                        for (int i = 0; i < count1leftx; i++)
                                                        {


                                                            Response.Write("<li>" + MexmioAPITransaction1.result.vin[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-blue\"></span></li>");
                                                        }
                                                    %>

                                                    <%--                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count1leftx > 3) Response.Write("Загрузить больше (<span>" + (count1leftx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__name">
                                                <p>Получатель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">
                                                    <% var count1right = MexmioAPITransaction1.result.vout.Count;
                                                        for (int i = 0; i < count1right; i++)
                                                        {
                                                           Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction1.result.vout[i].scriptPubKey.addresses[0]+"\">" + MexmioAPITransaction1.result.vout[i].scriptPubKey.addresses[0] + "</a></li>");
                                                        }
                                                    %>
                                                    <%-- <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li class="return">OP_RETURN</li>
                                                    <li class="black">35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">
                                                    <% var count1rightx = MexmioAPITransaction1.result.vout.Count;
                                                        for (int i = 0; i < count1rightx; i++)
                                                        {
                                                            if (MexmioAPITransaction1.result.vout[i].spent == null)
                                                                Response.Write("<li>" + MexmioAPITransaction1.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-green\"></span></li>");
                                                            else Response.Write("<li>" + MexmioAPITransaction1.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))  + " BTC <span class=\"list-red\"></span></li>");
                                                        }
                                                    %>


                                                    <%--   <li>0.00100000 BTC <span class="list-green"></span></li>
                                                    <li>0.00100000 BTC <span class="list-green"></span></li>
                                                    <li>0.00100000 BTC <span class="list-red"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count1rightx > 3) Response.Write("Загрузить больше (<span>" + (count1rightx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__footer t-row">
                                        <div class="t-row__head">
                                            <div class="t-row__head">
                                                <p class="div-transactions__title">Комиссия</p>
                                            </div>
                                        </div>
                                        <div class="t-row__big">
                                            <p class=""><%=Trans1Comission%> BTC</p>
                                            <p>(<%=Trans1ComissionSatBytes%> sat/B - <%=Trans1ComissionSatWeight%> sat/WU - <%=MexmioAPITransaction1.result.size%> bytes)</p>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__confirmation">
                                                <span class="position-non"></span>
                                            </div>
                                            <div class="div-transactions__position">
                                                <% if (Trans1Value > 0)
                                                    {
                                                        Response.Write("<span class=\"position-plus\"> +" + Trans1ValueF.ToString() + " BTC</span>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<span class=\"position-minus\"> " + Trans1ValueF.ToString() + " BTC</span>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                                  <div class="div-transactions__wrapper" style="display: <%: ShowTrans2 %>">
                                    <div class="div-transactions__head t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title">Хэш</p>
                                        </div>
                                        <div class="t-row__big">
                                            <p class="div-transactions__hesh">
                                                <a href="#"><%:Trans2Hash %></a>
                                            </p>
                                        </div>
                                        <div class="t-row__small">
                                            <div>
                                                <p class="div-transactions__time"><%:Trans2Time %></p>
                                            </div>
                                            <div style="display: <%:Trans2ConfirmationsVisible %>" class="div-transactions__confirmation">
                                                <span class="<%:Trans2ConfirmationsHTMLClass %>"><%:Trans2ConfirmationsHTMLText %></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__body t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title"></p>
                                        </div>
                                        <div class="t-row__big">
                                            <div class="div-transactions__name">
                                                <p>Отправитель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">

                                                    <% var count2left = MexmioAPITransaction2.result.vin.Count;
                                                        for (int i = 0; i < count2left; i++)
                                                        {
                                                          Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction2.result.vin[i].inputAddress+"\">" + MexmioAPITransaction2.result.vin[i].inputAddress + "</a></li>");
                                                        }
                                                    %>

                                                    <%--  <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">

                                                    <%  var count2leftx = MexmioAPITransaction2.result.vin.Count;
                                                        for (int i = 0; i < count2leftx; i++)
                                                        {


                                                            Response.Write("<li>" + MexmioAPITransaction2.result.vin[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-blue\"></span></li>");
                                                        }
                                                    %>

                                                    <%--                                                    <li>0.00200000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00200000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00200000 BTC <span class="list-blue"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count2leftx > 3) Response.Write("Загрузить больше (<span>" + (count2leftx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__name">
                                                <p>Получатель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">
                                                    <% var count2right = MexmioAPITransaction2.result.vout.Count;
                                                        for (int i = 0; i < count2right; i++)
                                                        {
                                                            Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction2.result.vout[i].scriptPubKey.addresses[0]+"\">" + MexmioAPITransaction2.result.vout[i].scriptPubKey.addresses[0] + "</a></li>");
                                                        }
                                                    %>
                                                    <%-- <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">
                                                    <% var count2rightx = MexmioAPITransaction2.result.vout.Count;
                                                        for (int i = 0; i < count2rightx; i++)
                                                        {
                                                            if (MexmioAPITransaction2.result.vout[i].spent == null)
                                                                Response.Write("<li>" + MexmioAPITransaction2.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-green\"></span></li>");
                                                            else Response.Write("<li>" + MexmioAPITransaction2.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))  + " BTC <span class=\"list-red\"></span></li>");
                                                        }
                                                    %>


                                                    <%--   <li>0.00200000 BTC <span class="list-green"></span></li>
                                                    <li>0.00200000 BTC <span class="list-green"></span></li>
                                                    <li>0.00200000 BTC <span class="list-red"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count2rightx > 3) Response.Write("Загрузить больше (<span>" + (count2rightx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__footer t-row">
                                        <div class="t-row__head">
                                            <div class="t-row__head">
                                                <p class="div-transactions__title">Комиссия</p>
                                            </div>
                                        </div>
                                        <div class="t-row__big">
                                            <p class=""><%=Trans2Comission%> BTC</p>
                                            <p>(<%=Trans2ComissionSatBytes%> sat/B - <%=Trans2ComissionSatWeight%> sat/WU - <%=MexmioAPITransaction2.result.size%> bytes)</p>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__confirmation">
                                                <span class="position-non"></span>
                                            </div>
                                            <div class="div-transactions__position">
                                                <% if (Trans2Value > 0)
                                                    {
                                                        Response.Write("<span class=\"position-plus\"> +" + Trans2ValueF.ToString() + " BTC</span>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<span class=\"position-minus\"> " + Trans2ValueF.ToString() + " BTC</span>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="div-transactions__wrapper" style="display: <%: ShowTrans3 %>">
                                    <div class="div-transactions__head t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title">Хэш</p>
                                        </div>
                                        <div class="t-row__big">
                                            <p class="div-transactions__hesh">
                                                <a href="#"><%:Trans3Hash %></a>
                                            </p>
                                        </div>
                                        <div class="t-row__small">
                                            <div>
                                                <p class="div-transactions__time"><%:Trans3Time %></p>
                                            </div>
                                            <div style="display: <%:Trans3ConfirmationsVisible %>" class="div-transactions__confirmation">
                                                <span class="<%:Trans3ConfirmationsHTMLClass %>"><%:Trans3ConfirmationsHTMLText %></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__body t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title"></p>
                                        </div>
                                        <div class="t-row__big">
                                            <div class="div-transactions__name">
                                                <p>Отправитель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">

                                                    <% var count3left = MexmioAPITransaction3.result.vin.Count;
                                                        for (int i = 0; i < count3left; i++)
                                                        {
                                                           Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction3.result.vin[i].inputAddress+"\">" + MexmioAPITransaction3.result.vin[i].inputAddress + "</a></li>");
                                                        }
                                                    %>

                                                    <%--  <li>35hK34tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK34tcLEWcgNA...</li>
                                                    <li>35hK34tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">

                                                    <%  var count3leftx = MexmioAPITransaction3.result.vin.Count;
                                                        for (int i = 0; i < count3leftx; i++)
                                                        {


                                                            Response.Write("<li>" + MexmioAPITransaction3.result.vin[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-blue\"></span></li>");
                                                        }
                                                    %>

                                                    <%--                                                    <li>0.00300000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00300000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00300000 BTC <span class="list-blue"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count3leftx > 3) Response.Write("Загрузить больше (<span>" + (count3leftx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__name">
                                                <p>Получатель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">
                                                    <% var count3right = MexmioAPITransaction3.result.vout.Count;
                                                        for (int i = 0; i < count3right; i++)
                                                        {
                                                             Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction3.result.vout[i].scriptPubKey.addresses[0]+"\">" + MexmioAPITransaction3.result.vout[i].scriptPubKey.addresses[0] + "</a></li>");
                                                        }
                                                    %>
                                                    <%-- <li>35hK34tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK34tcLEWcgNA...</li>
                                                    <li>35hK34tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">
                                                    <% var count3rightx = MexmioAPITransaction3.result.vout.Count;
                                                        for (int i = 0; i < count3rightx; i++)
                                                        {
                                                            if (MexmioAPITransaction3.result.vout[i].spent == null)
                                                                Response.Write("<li>" + MexmioAPITransaction3.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-green\"></span></li>");
                                                            else Response.Write("<li>" + MexmioAPITransaction3.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))  + " BTC <span class=\"list-red\"></span></li>");
                                                        }
                                                    %>


                                                    <%--   <li>0.00300000 BTC <span class="list-green"></span></li>
                                                    <li>0.00300000 BTC <span class="list-green"></span></li>
                                                    <li>0.00300000 BTC <span class="list-red"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count3rightx > 3) Response.Write("Загрузить больше (<span>" + (count3rightx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__footer t-row">
                                        <div class="t-row__head">
                                            <div class="t-row__head">
                                                <p class="div-transactions__title">Комиссия</p>
                                            </div>
                                        </div>
                                        <div class="t-row__big">
                                            <p class=""><%=Trans3Comission%> BTC</p>
                                            <p>(<%=Trans3ComissionSatBytes%> sat/B - <%=Trans3ComissionSatWeight%> sat/WU - <%=MexmioAPITransaction3.result.size%> bytes)</p>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__confirmation">
                                                <span class="position-non"></span>
                                            </div>
                                            <div class="div-transactions__position">
                                                <% if (Trans3Value > 0)
                                                    {
                                                        Response.Write("<span class=\"position-plus\"> +" + Trans3ValueF.ToString() + " BTC</span>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<span class=\"position-minus\"> " + Trans3ValueF.ToString() + " BTC</span>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="div-transactions__wrapper" style="display: <%: ShowTrans4 %>">
                                    <div class="div-transactions__head t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title">Хэш</p>
                                        </div>
                                        <div class="t-row__big">
                                            <p class="div-transactions__hesh">
                                                <a href="#"><%:Trans4Hash %></a>
                                            </p>
                                        </div>
                                        <div class="t-row__small">
                                            <div>
                                                <p class="div-transactions__time"><%:Trans4Time %></p>
                                            </div>
                                            <div style="display: <%:Trans4ConfirmationsVisible %>" class="div-transactions__confirmation">
                                                <span class="<%:Trans4ConfirmationsHTMLClass %>"><%:Trans4ConfirmationsHTMLText %></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__body t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title"></p>
                                        </div>
                                        <div class="t-row__big">
                                            <div class="div-transactions__name">
                                                <p>Отправитель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">

                                                    <% var count4left = MexmioAPITransaction4.result.vin.Count;
                                                        for (int i = 0; i < count4left; i++)
                                                        {
                                                          Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction4.result.vin[i].inputAddress+"\">" + MexmioAPITransaction4.result.vin[i].inputAddress + "</a></li>");
                                                        }
                                                    %>

                                                    <%--  <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">

                                                    <%  var count4leftx = MexmioAPITransaction4.result.vin.Count;
                                                        for (int i = 0; i < count4leftx; i++)
                                                        {


                                                            Response.Write("<li>" + MexmioAPITransaction4.result.vin[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-blue\"></span></li>");
                                                        }
                                                    %>

                                                    <%--                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00100000 BTC <span class="list-blue"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count4leftx > 3) Response.Write("Загрузить больше (<span>" + (count4leftx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__name">
                                                <p>Получатель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">
                                                    <% var count4right = MexmioAPITransaction4.result.vout.Count;
                                                        for (int i = 0; i < count4right; i++)
                                                        {
                                                             Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction4.result.vout[i].scriptPubKey.addresses[0]+"\">" + MexmioAPITransaction4.result.vout[i].scriptPubKey.addresses[0] + "</a></li>");
                                                        }
                                                    %>
                                                    <%-- <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">
                                                    <% var count4rightx = MexmioAPITransaction4.result.vout.Count;
                                                        for (int i = 0; i < count4rightx; i++)
                                                        {
                                                            if (MexmioAPITransaction4.result.vout[i].spent == null)
                                                                Response.Write("<li>" + MexmioAPITransaction4.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-green\"></span></li>");
                                                            else Response.Write("<li>" + MexmioAPITransaction4.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))  + " BTC <span class=\"list-red\"></span></li>");
                                                        }
                                                    %>


                                                    <%--   <li>0.00100000 BTC <span class="list-green"></span></li>
                                                    <li>0.00100000 BTC <span class="list-green"></span></li>
                                                    <li>0.00100000 BTC <span class="list-red"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count4rightx > 3) Response.Write("Загрузить больше (<span>" + (count4rightx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__footer t-row">
                                        <div class="t-row__head">
                                            <div class="t-row__head">
                                                <p class="div-transactions__title">Комиссия</p>
                                            </div>
                                        </div>
                                        <div class="t-row__big">
                                            <p class=""><%=Trans4Comission%> BTC</p>
                                            <p>(<%=Trans4ComissionSatBytes%> sat/B - <%=Trans4ComissionSatWeight%> sat/WU - <%=MexmioAPITransaction4.result.size%> bytes)</p>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__confirmation">
                                                <span class="position-non"></span>
                                            </div>
                                            <div class="div-transactions__position">
                                                <% if (Trans4Value > 0)
                                                    {
                                                        Response.Write("<span class=\"position-plus\"> +" + Trans4ValueF.ToString() + " BTC</span>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<span class=\"position-minus\"> " + Trans4ValueF.ToString() + " BTC</span>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="div-transactions__wrapper" style="display: <%: ShowTrans5 %>">
                                    <div class="div-transactions__head t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title">Хэш</p>
                                        </div>
                                        <div class="t-row__big">
                                            <p class="div-transactions__hesh">
                                                <a href="#"><%:Trans5Hash %></a>
                                            </p>
                                        </div>
                                        <div class="t-row__small">
                                            <div>
                                                <p class="div-transactions__time"><%:Trans5Time %></p>
                                            </div>
                                            <div style="display: <%:Trans5ConfirmationsVisible %>" class="div-transactions__confirmation">
                                                <span class="<%:Trans5ConfirmationsHTMLClass %>"><%:Trans5ConfirmationsHTMLText %></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__body t-row">
                                        <div class="t-row__head">
                                            <p class="div-transactions__title"></p>
                                        </div>
                                        <div class="t-row__big">
                                            <div class="div-transactions__name">
                                                <p>Отправитель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">

                                                    <% var count5left = MexmioAPITransaction5.result.vin.Count;
                                                        for (int i = 0; i < count5left; i++)
                                                        {
                                                           Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction5.result.vin[i].inputAddress+"\">" + MexmioAPITransaction5.result.vin[i].inputAddress + "</a></li>");
                                                        }
                                                    %>

                                                    <%--  <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">

                                                    <%  var count5leftx = MexmioAPITransaction5.result.vin.Count;
                                                        for (int i = 0; i < count5leftx; i++)
                                                        {


                                                            Response.Write("<li>" + MexmioAPITransaction5.result.vin[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-blue\"></span></li>");
                                                        }
                                                    %>

                                                    <%--                                                    <li>0.00500000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00500000 BTC <span class="list-blue"></span></li>
                                                    <li>0.00500000 BTC <span class="list-blue"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count5leftx > 3) Response.Write("Загрузить больше (<span>" + (count5leftx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__name">
                                                <p>Получатель</p>
                                            </div>
                                            <div class="div-transactions__lists">
                                                <ul class="list-left">
                                                    <% var count5right = MexmioAPITransaction5.result.vout.Count;
                                                        for (int i = 0; i < count5right; i++)
                                                        {
                                                            Response.Write("<li> <a href=\"/bitcoin/address/"+MexmioAPITransaction5.result.vout[i].scriptPubKey.addresses[0]+"\">" + MexmioAPITransaction5.result.vout[i].scriptPubKey.addresses[0] + "</a></li>");
                                                        }
                                                    %>
                                                    <%-- <li>35hK24tcLEWcgNAEWcgNAEWcgNA</li>
                                                    <li>35hK24tcLEWcgNA...</li>
                                                    <li>35hK24tcLEWcgNA...</li>--%>
                                                </ul>
                                                <ul class="list-right">
                                                    <% var count5rightx = MexmioAPITransaction5.result.vout.Count;
                                                        for (int i = 0; i < count5rightx; i++)
                                                        {
                                                            if (MexmioAPITransaction5.result.vout[i].spent == null)
                                                                Response.Write("<li>" + MexmioAPITransaction5.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " BTC <span class=\"list-green\"></span></li>");
                                                            else Response.Write("<li>" + MexmioAPITransaction5.result.vout[i].value.ToString("F8", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))  + " BTC <span class=\"list-red\"></span></li>");
                                                        }
                                                    %>


                                                    <%--   <li>0.00500000 BTC <span class="list-green"></span></li>
                                                    <li>0.00500000 BTC <span class="list-green"></span></li>
                                                    <li>0.00500000 BTC <span class="list-red"></span></li>--%>
                                                </ul>
                                            </div>
                                            <div class="div-transactions__download">
                                                <p>
                                                    <a href="#"><% if (count5rightx > 3) Response.Write("Загрузить больше (<span>" + (count5rightx - 3) + "</span> осталось)");
                                                    %></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-transactions__footer t-row">
                                        <div class="t-row__head">
                                            <div class="t-row__head">
                                                <p class="div-transactions__title">Комиссия</p>
                                            </div>
                                        </div>
                                        <div class="t-row__big">
                                            <p class=""><%=Trans5Comission%> BTC</p>
                                            <p>(<%=Trans5ComissionSatBytes%> sat/B - <%=Trans5ComissionSatWeight%> sat/WU - <%=MexmioAPITransaction5.result.size%> bytes)</p>
                                        </div>
                                        <div class="t-row__small">
                                            <div class="div-transactions__confirmation">
                                                <span class="position-non"></span>
                                            </div>
                                            <div class="div-transactions__position">
                                                <% if (Trans5Value > 0)
                                                    {
                                                        Response.Write("<span class=\"position-plus\"> +" + Trans5ValueF.ToString() + " BTC</span>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<span class=\"position-minus\"> " + Trans5ValueF.ToString() + " BTC</span>");
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                            
                            </div>
                        </div>
                        <div class="transactions__footer">
                            <div class="navigation">
                                <ul>
                                    <li class="nav_arrow-left nav-arrow arrow-not"><a href="#"></a></li>
                                    <%
                                        if (pagesCount == 1)
                                        {
                                            Response.Write("<li><a href=\"#\"class=\"nav-activ\">1</a></li>");
                                        }
                                        if (pagesCount == 2)
                                        {
                                            Response.Write("<li><a href=\"#\"class=\"nav-activ\">1</a></li>");
                                            Response.Write("<li><a href=\"#\">2</a></li>");
                                        }
                                          if (pagesCount == 3)
                                        {
                                            Response.Write("<li><a href=\"#\"class=\"nav-activ\">1</a></li>");
                                            Response.Write("<li><a href=\"#\">2</a></li>");
                                            Response.Write("<li><a href=\"#\">3</a></li>");
                                        }



                                    %>



                                    <li><a href="#" class="nav-activ">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <!--
                                    <li class="nav_line"><a href="#"></a></li>
                                    -->

                                    <li><a href="#"><%=pagesCount-2 %></a></li>
                                    <li><a href="#"><%=pagesCount-1 %></a></li>
                                    <li><a href="#"><%=pagesCount %></a></li>
                                    <li class="nav_arrow-right nav-arrow"><a href="#"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="footer__wrapper _container">
                <div class="footer__body body-f">
                    <div class="body-f__state">
                        <p><span>Состояние</span></p>
                    </div>
                    <div class="body-f__localization">
                        <span>Локализация</span>
                    </div>
                    <div class="body-f__nav">
                        <ul>
                            <li><a href="#">О проекте</a></li>
                            <li><a href="#">Пользовательское соглашение</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Обратная связь</a></li>
                        </ul>
                    </div>
                    <div class="body-f__language">
                        <ul>
                            <li><a href="#">Русский</a></li>
                            <li><a href="#">English</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer__info info-f">
                    <div class="info-f__copyright">
                        <p>© 2020 Mexm.io</p>
                    </div>
                    <div class="info-f__version">
                        <p>Версия 1.18.9</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>
