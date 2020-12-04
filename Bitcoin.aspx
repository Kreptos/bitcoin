<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bitcoin.aspx.cs" Inherits="MexmIO_WEB2.Public.Bitcoin" Async="true" AsyncTimeout="60" %>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pusher/2.1.6/pusher.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="/js/utils.js"></script>
    <script src="/js/script.min.js"></script>

    <!-- Иконка-->
    <link rel="icon" type="image/ico" href="/img/favicon.ico">
</head>
<body onload="livetrans('start');" style="overflow-y: scroll;" class="list">

    <div class="wrapper-list">
        <%Response.Write(MexmIO_WEB2.Utils.Page.GetTemplate.Get("Header","TopMenu",language)); %>
        <div class="content">
            <div class="content__wrapper _container">
                <div class="block-1">
                    <div class="block-1__header header-content">
                        <div class="bread-crumbs">
                            <div class="bread-crumbs__wrapper">
                                <div class="bread-crumbs__text">
                                    <p class="bread-crumbs__last"><a href="#"><span></span>Bitcoin</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="super-link">
                            <a href="#">
                                <span class="super-link__span-text">Ссылка
                                </span>
                                <span class="super-link__span">
                                    <picture><source srcset="/img/icon/super-link.svg" type="image/webp"><img src="/img/icon/super-link.svg" alt="link"></picture>
                                </span>
                            </a>
                        </div>
                    </div>

                    <div class="block-1__body statistics">
                        <div class="statistics__header">
                            <div class="statistics__currency currency-s">
                                <div class="currency-s__logo">
                                    <picture><source srcset="/img/currency/bitcoin.svg" type="image/webp"><img src="/img/currency/bitcoin.svg" alt="bitcoin"></picture>
                                </div>
                                <div class="currency-s__title">
                                    <p class="currency-s__title-p">Bitcoin</p>
                                </div>
                            </div>
                            <div class="statistics__prices prices-s">
                                <div class="prices-s__price">
                                    <% GRAAL.BitMEXApi bitmex = new GRAAL.BitMEXApi("OOI39mB7RnGhC04Plu3-X8uu", "3PclHNuzgxHtCkHvUfVXHikH-2WzXXTcqD1pGP-UE4fRbeYU", "https://www.bitmex.com");
                                        var Candles = bitmex.GetInstrument("XBTUSD");
                                        double PrevPrice = Candles[0].prevClosePrice;
                                        double LastPrice = Candles[0].lastPrice;
                                        double perc = (Stats.market_price_usd - PrevPrice) / Stats.market_price_usd * 100;

                                    %>
                                    <%if (perc > 0)
                                        {
                                            Response.Write("<p>$" + (Convert.ToDecimal(LastPrice)).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + "<span style=\"color:#379c37\"> (" + perc.ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " %)</span></p>");
                                        }
                                        else
                                            Response.Write("<p>$" + (Convert.ToDecimal(LastPrice)).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + "<span style=\"color:#ff1c45\"> (" + perc.ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) + " %)</span></p>");

                                    %>
                                </div>
                                <div class="prices-s__capital">
                                    <p>Капитализация: <span>$<%Response.Write((Convert.ToDecimal(LastPrice) * Convert.ToDecimal(Stats.totalbc) / 100000000/1000).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))); %> Млрд.</span></p>
                                </div>
                                <div class="prices-s__share">
                                    <p>
                                        Доля: <span><%
                                                        Response.Write((Metrics.data.btc_dominance).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))); %> %</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="statistics__body">
                            <div class="statistics__mini-blocks mini-blocks">
                                <div class="mini-blocks__content">
                                    <div class="mini-blocks__header header_b">
                                        <h3>Статистика</h3>
                                    </div>
                                    <div class="mini-blocks__body block-mini">
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Всего в обороте:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(Stats.totalbc)/ 100000000).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> BTC</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Сложность сети:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(Stats.difficulty)/ 1000000000000).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> T</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Размер блокчейна:</p>
                                                    <p class="block-mini__number"><%=(blockchainsize/1024).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> Гб</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b width-auto">Время последнего блока:</p>
                                                    <p class="block-mini__number"><%=MexmIO_WEB2.Utils.UnixTime.UnixTimeStampToDateTime(LastBlockInfo.result.time).ToString("dd.MM.yyyy HH:mm") %></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Сетевых узлов:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(BlockcypherMainInfo.peer_count)).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mini-blocks__content">
                                    <div class="mini-blocks__header">
                                        <h3>За сутки</h3>
                                    </div>
                                    <div class="mini-blocks__body block-mini">
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Всего блоков:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(Stats.n_blocks_mined)).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Количество транзакций:</p>
                                                    <p class="block-mini__number"><%=Convert.ToDecimal(hr24transactioncount).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Дневной оборот:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(hr24btcsent)/ 100000000).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> BTC </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Хешрейт сети:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(hashrate)/ 1000000000).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> Eh/s</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Среднее время блока:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(blockinterval.Replace(".",","))).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %> с.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mini-blocks__content">
                                    <div class="mini-blocks__header">
                                        <h3>Мемпул</h3>
                                    </div>
                                    <div class="mini-blocks__body block-mini">
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Рекомендуемая комиссия:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(BlockcypherMainInfo.medium_fee_per_kb)/1024).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))%> Сат/байт</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text">Транзакций:</p>
                                                    <p class="block-mini__number"><%=(Convert.ToDecimal(BlockcypherMainInfo.unconfirmed_count)).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Транзакций в секунду:</p>
                                                    <p class="block-mini__number"><%=TransactionsPerSecond.ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Сумма комиссия:</p>

                                                    <p class="block-mini__number">$<%Response.Write((MemPoolFee * Convert.ToDecimal(LastPrice)).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))); %></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-mini__wrapper">
                                            <div class="block-mini__cell">
                                                <div class="block-mini__b">
                                                    <p class="block-mini__text text_b">Размер:</p>
                                                    <p class="block-mini__number"><%Response.Write((Convert.ToDecimal(MempoolSize) / 1024 / 1024).ToString("N2", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))); %> Мб</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="statistics__mini-info info-s">
                                <div class="info-s__wrapper">
                                    <div class="info-s__column column">
                                        <div class="column__wrapper">
                                            <div class="column__cell">
                                                <div class="info-s__ico">
                                                    <picture><source srcset="/img/info-s/icon-1.svg" type="image/webp"><img src="/img/info-s/icon-1.svg" alt="icon-1"></picture>
                                                </div>

                                                <div class="info-s__text text-info">
                                                    <div class="text-info__title">
                                                        <p>Блоков</p>
                                                    </div>
                                                    <div class="text-info__number">
                                                        <p><%=(Convert.ToDecimal(BlockCount.result)).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--
                                    <div class="column__wrapper">
                                        <div class="column__cell">
                                            <div class="info-s__ico">
                                                <picture><source srcset="img/info-s/icon-2.svg" type="image/webp"><img src="img/info-s/icon-2.svg" alt="icon-1"></picture>
                                            </div>
                                            <div class="info-s__text text-info">
                                                <div class="text-info__title">
                                                    <p>Выходов</p>
                                                </div>
                                                <div class="text-info__number">
                                                    <p>1,413,845,645</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    -->
                                        <div class="column__wrapper">
                                            <div class="column__cell">
                                                <div class="info-s__ico">
                                                    <picture><source srcset="/img/info-s/icon-3.svg" type="image/webp"><img src="/img/info-s/icon-3.svg" alt="icon-1"></picture>
                                                </div>
                                                <div class="info-s__text text-info">
                                                    <div class="text-info__title">
                                                        <p>Транзакций</p>
                                                    </div>
                                                    <div class="text-info__number">
                                                        <p><%=(Convert.ToDecimal(totalTransactionsCount)).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US")) %></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="column__wrapper">
                                            <div class="column__cell">
                                                <div class="info-s__ico">
                                                    <picture><source srcset="/img/info-s/icon-4.svg" type="image/webp"><img src="/img/info-s/icon-4.svg" alt="icon-1"></picture>
                                                </div>
                                                <div class="info-s__text text-info">
                                                    <div class="text-info__title">
                                                        <p>Время после блока</p>
                                                    </div>
                                                    <div class="text-info__number">
                                                        <p>
                                                            <%System.TimeSpan diff1 = DateTime.Now - (MexmIO_WEB2.Utils.UnixTime.UnixTimeStampToDateTime(LastBlockInfo.result.time));
                                                                Response.Write((diff1).ToString("hh':'mm':'ss"));
                                                            %>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-2">
                    <div class="diagram">
                        <div class="diagram__wrapper w-diagram">
                            <div class="w-diagram__header header-diagram block-wrapper">
                                <div class="block-wrapper__header">
                                    <h2>Стоимость</h2>
                                </div>
                                <!--
                            <div class="header-diagram__path">
                                <p>/metrica/horizontal/analytics/analytics-customers.html</p>
                            </div>
                            -->
                            </div>
                            <div class="w-diagram__body body-diagram">
                                <!--
                            <div class="body-diagram__icons">
                                <ul>
                                    <li><a href="#"><picture><source srcset="img/diagram/1.webp" type="image/webp"><img src="img/diagram/1.jpg" alt="icon"></picture></a></li>
                                    <li><a href="#"><picture><source srcset="img/diagram/2.webp" type="image/webp"><img src="img/diagram/2.jpg" alt="icon"></picture></a></li>
                                    <li><a href="#"><picture><source srcset="img/diagram/3.webp" type="image/webp"><img src="img/diagram/3.jpg" alt="icon"></picture></a></li>
                                    <li><a href="#"><picture><source srcset="img/diagram/4.webp" type="image/webp"><img src="img/diagram/4.jpg" alt="icon"></picture></a></li>
                                    <li><a href="#"><picture><source srcset="img/diagram/5.webp" type="image/webp"><img src="img/diagram/5.jpg" alt="icon"></picture></a></li>
                                    <li><a href="#"><picture><source srcset="img/diagram/6.webp" type="image/webp"><img src="img/diagram/6.jpg" alt="icon"></picture></a></li>
                                </ul>
                            </div>
                            -->
                                <div class="body-diagram__diagram">

                                    <canvas height="70" id="PriceChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-3">
                    <div class="block-3__wrapper block-wrapper">
                        <div class="block-3__small">
                            <div class="block-wrapper__header">
                                <h2>Распределение хешрейта</h2>
                            </div>
                            <div class="block-3__diagram">
                                <canvas id="myChart"></canvas>
                            </div>
                        </div>
                        <div class="block-3__big">
                            <div class="block-wrapper__header">
                                <h2>Последние блоки</h2>
                            </div>
                            <div class="block-3__table table table-c">

                                <table>
                                    <thead>
                                        <tr class="table__header">
                                            <th>Номер</th>
                                            <th>Хэш</th>
                                            <th>Сгенерирован</th>
                                            <th>Выходы (BTC)</th>
                                            <th>Выходы (USD)</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%
                                            decimal USDprice = MexmIO_WEB2.sochain.price.MarketPrice.GetMarketPrice();
                                            for (int i = 0; i < 5; i++)
                                            {
                                                Response.Write("<tr class=\"table__body\">");
                                                Response.Write("<td><span class=\"t-blue\">" + dbBlocks[0, i] + "</span></td>");
                                                Response.Write("<td><span class=\"t-blue\">" + dbBlocks[1, i].Substring(0, 1) + "..." + dbBlocks[1, i].Substring(55, 9) + "</span></td>");
                                                MexmIO_WEB2.RPC.block.GetBlock BlockHeader = Newtonsoft.Json.JsonConvert.DeserializeObject<MexmIO_WEB2.RPC.block.GetBlock>(dbBlocks[3, i]);
                                                Response.Write("<td><span>" + MexmIO_WEB2.Utils.UnixTime.UnixTimeStampToDateTime(BlockHeader.result.time).ToString("dd.MM.yyyy HH:mm") + "</span></td>");
                                                double BTCbalance = Convert.ToDouble(dbBlocks[5, i]);
                                                string BTCbalancePart1 = Math.Truncate(BTCbalance).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"));
                                                string BTCbalancePart2 = BTCbalance.ToString().Substring(BTCbalance.ToString().IndexOf(",") + 1, BTCbalance.ToString().Length - BTCbalance.ToString().IndexOf(",") - 1);

                                                double USDbalance = Convert.ToDouble(dbBlocks[5, i]) * Convert.ToDouble(USDprice);
                                                string USDbalancePart1 = Math.Truncate(USDbalance).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"));
                                                string USDbalancePart2 = USDbalance.ToString().Substring(USDbalance.ToString().IndexOf(",") + 1, USDbalance.ToString().Length - USDbalance.ToString().IndexOf(",") - 1);

                                                Response.Write("<td><span>" + BTCbalancePart1 + "." + BTCbalancePart2.Substring(0, 2) + "</span><span class=\"t-grey\">" + BTCbalancePart2.Substring(2, BTCbalancePart2.Length - 2) + "</span></td>");
                                                Response.Write("<td><span>" + USDbalancePart1 + "</span><span class=\"t-grey\">." + USDbalancePart2.Substring(0, 2) + "</span></td>");
                                                Response.Write("</tr>");
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <div class="big-footer table__footer">
                                <div class="loading-results bitcoin-result">
                                    <p><a href="/bitcoin/blocks">Загрузить ещё <span>(<%Response.Write(Convert.ToInt32(BlockCount.result).ToString("N0", System.Globalization.CultureInfo.CreateSpecificCulture("en-US"))); %> результатов) →</span></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block-4">
                    <div class="block-4__wrapper block-wrapper">
                        <div class="block-4__small">
                            <script>
                                var transstate = 'resume';
                            </script>

                            <script>

                                function livetrans(state) {

                                    if (state == 'pause') {
                                        if (window.transstate != 'pause') {
                                            transstate = 'pause';
                                        }
                                        else {
                                            transstate = 'resume';
                                        }
                                    }
                                    else {

                                        var socket = new WebSocket("wss://ws.blockchain.info/inv");
                                        socket.onopen = function () {
                                            console.log("Соединение установлено.");
                                            socket.send('{"op":"unconfirmed_sub"}');
                                        };
                                    }

                                    socket.onmessage = function (event) {
                                        //console.log("Получены данные " + event.data);
                                        var bitcoin = JSON.parse(event.data);
                                        var hash = bitcoin.x.hash;
                                        var summ = 0;
                                        var summin = 0;
                                        for (var i = 0; i <= bitcoin.x.inputs.length - 1; i++) {
                                            summin += bitcoin.x.inputs[i].prev_out.value;
                                        }
                                        for (var i = 0; i <= bitcoin.x.out.length - 1; i++) {
                                            summ += bitcoin.x.out[i].value;
                                        }
                                        var comission = (((summin - summ) / bitcoin.x.size)).toFixed(2);
                                        summ = (summ / 100000000).toFixed(6)
                                        var table = document.getElementsByClassName('translive');
                                        var rowCount = table[0].rows.length;
                                        if (window.transstate != 'pause') {
                                            table[0].deleteRow(rowCount - 1);
                                            $(".translive").prepend('<tr class="table__body"><td> <a href="/bitcoin/transaction/' + hash + '"><span class="t-blue">' + hash.substring(0, 5) + '...' + hash.substring(-5, 5) + '</span></a></td>   <td><span>' + summ + ' BTC</span></td>   <td><span>' + comission + ' ś/vByte</span></td></tr>');
                                        }
                                    };
                                }
                            </script>

                            <div class="block-wrapper__header">
                                <h2>Неподтвержденные транзакции</h2>
                            </div>

                            <style>
                                .txt {
                                    color: transparent;
                                    text-shadow: 0 0 5px rgba(0,0,0,0.5);
                                }
                                /* FF fix */
                            </style>

                            <div class="block-4__table table">
                                <table id="translive" class="translive">
                                    <tbody>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>10.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>20.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>30.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>40.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>50.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>60.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>70.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>80.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>90.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                        <tr class="table__body txt">
                                            <td><span>e8d82...8198d</span></td>
                                            <td><span>100.148787 BTC</span></td>
                                            <td><span>80.36 ś/vByte</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="block-4__stop">
                                <div class="stop" id="liveactive" onclick="livetrans('pause')"></div>
                            </div>
                        </div>
                        <div class="block-4__big">
                            <div class="block-wrapper__header">
                                <h2>Распределение уровня комиссий</h2>
                            </div>
                            <div class="block-4__diagram diagram-b4">
                                <%--<div class="diagram-b4__value">
                                    <ul>
                                        <li class="li-green">>300</li>
                                        <li class="li-green">200 - 250</li>
                                        <li class="li-green">160 - 180</li>
                                        <li class="li-green">130 - 140</li>
                                        <li class="li-green">110 - 120</li>
                                        <li class="li-green">90 - 100</li>
                                        <li class="li-green">70 - 80</li>
                                        <li class="li-green">50 - 60</li>
                                        <li class="li-green">30 - 35</li>
                                        <li class="li-yellow">15 - 20</li>
                                        <li class="li-yellow">8 - 10</li>
                                        <li class="li-yellow">5 - 6</li>
                                        <li class="li-yellow">3 - 4</li>
                                        <li class="li-red">1 - 2</li>
                                    </ul>
                                </div>--%>
                                <div class="diagram">
                                    <div class="diagram__d">
                                        <canvas id="ComissionsChart"></canvas>
                                    </div>

                                    <%--<div class="diagram__value">
                                        <ul>
                                            <li>1k</li>
                                            <li>10k</li>
                                            <li>100k</li>
                                            <li>1M</li>
                                            <li>10M</li>
                                            <li>100M</li>
                                        </ul>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%Response.Write(MexmIO_WEB2.Utils.Page.GetTemplate.Get("Footer","Footer",language)); %>
    </div>

    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var chart = new Chart(ctx, {
            // The type of chart we want to create
            type: 'doughnut',

            // The data for our dataset
            data: {
                datasets: [{
                    data: [

                      <% Response.Write("'" + PoolMiningArr[1, 12] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[1, 11] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[1, 10] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[1, 9] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[1, 8] + "'");%>,
                           <% Response.Write("'" + PoolMiningArr[1, 7] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[1, 6] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[1, 5] + "'");%>,
                         <% Response.Write("'" + PoolMiningArr[1, 4] + "'");%>,

                  ],
                  backgroundColor: [

                      window.chartColors.red,
                      window.chartColors.orange,
                      window.chartColors.yellow,
                      window.chartColors.green,
                      window.chartColors.blue,
                      window.chartColors.arlekin,
                      window.chartColors.baclajan,
                      window.chartColors.birusa,
                      window.chartColors.gold,
                      window.chartColors.lightgreen,
                      window.chartColors.pink,
                      window.chartColors.purple,
                      window.chartColors.grey,

                  ],
                  label: 'Dataset 1'
              }],
              labels: [

                      <% Response.Write("'" + PoolMiningArr[0, 12] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[0, 11] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[0, 10] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[0, 9] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[0, 8] + "'");%>,
                         <% Response.Write("'" + PoolMiningArr[0, 7] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[0, 6] + "'");%>,
                       <% Response.Write("'" + PoolMiningArr[0, 5] + "'");%>,
                        <% Response.Write("'" + PoolMiningArr[0, 4] + "'");%>

              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'right',
                  display: true,
              },
              title: {
                  display: false,
                  text: 'Chart.js Doughnut Chart'
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      });
    </script>

    <script>
        var ctx = document.getElementById('PriceChart').getContext('2d');
        var chart = new Chart(ctx, {
            // The type of chart we want to create
            type: 'line',

            // The data for our dataset
            data: {
                datasets: [{
                    backgroundColor: window.chartColors.price2,
                    borderColor: window.chartColors.price1,
                    borderWidth: 4,
                    pointBorderWidth: 4,
                    pointBorderColor: window.chartColors.price2,
                    data: [

         <%
        for (int i = 0; i < YearBitcoinPrice.values.Count; i = i + 2)
        {
            Response.Write("'" + YearBitcoinPrice.values[i].y.ToString().Replace(",", ".") + "',");
        }
         %>

                     ],
                     fill: false,

                     label: ''
                 }],
                 labels: [

                      <%  for (int i = 0; i < YearBitcoinPrice.values.Count; i = i + 2)
        {
            Response.Write("'" + MexmIO_WEB2.Utils.UnixTime.UnixTimeStampToDateTime(YearBitcoinPrice.values[i].x).ToString("dd.MM.yy") + "',");
        }%>

                 ]
             },
             options: {
                 responsive: true,
                 legend: {
                     position: 'right',
                     display: false,
                 },
                 title: {
                     display: false,
                     text: 'Chart.js Doughnut Chart'
                 },
                 animation: {
                     animateScale: true,
                     animateRotate: true
                 },
                 scales: {
                     xAxes: [{
                         display: true,
                         ticks: {
                             callback: function (dataLabel, index) {
                                 // Hide the label of every 2nd dataset. return null to hide the grid line too
                                 return index % 2 === 0 ? dataLabel : '';
                             }
                         }
                     }],
                     yAxes: [{
                         display: true,
                         beginAtZero: false
                     }]
                 }
             }
         });
    </script>

    <script>
        function graphUpdate() {
            var request = new XMLHttpRequest();
            function reqReadyStateChange() {
                if (request.readyState == 4) {
                    var status = request.status;
                    if (status == 200) {
                        var response = request.responseText;
                        var json = JSON.parse(response);
                        chart.config.data.datasets[0].data[0] = json.v1x2;
                        chart.config.data.datasets[0].data[1] = json.v3x4;
                        chart.config.data.datasets[0].data[2] = json.v5x6;
                        chart.config.data.datasets[0].data[3] = json.v7x10;
                        chart.config.data.datasets[0].data[4] = json.v11x20;
                        chart.config.data.datasets[0].data[5] = json.v21x35;
                        chart.config.data.datasets[0].data[6] = json.v36x50;
                        chart.config.data.datasets[0].data[7] = json.v51x60;
                        chart.config.data.datasets[0].data[8] = json.v61x80;
                        chart.config.data.datasets[0].data[9] = json.v81x100;
                        chart.config.data.datasets[0].data[10] = json.v101x120;
                        chart.config.data.datasets[0].data[11] = json.v121x140;
                        chart.config.data.datasets[0].data[12] = json.v141x180;
                        chart.config.data.datasets[0].data[13] = json.v181x250;
                        chart.config.data.datasets[0].data[13] = json.v251;
                        //json.v1x2, json.v3x4, json.v5x6, json.v7x10, json.v11x20, json.v21x35, json.v36x50, json.v51x60,json.v61x80, json.v81x100, json.v101x120, json.v121x140, json.v141x180, json.v181x250, json.v251
                        window.chart.update();
                    }
                }
            }
            // строка с параметрами для отправки

            request.open("GET", "/api/mempoolcomissions");
            request.onreadystatechange = reqReadyStateChange;
            request.send();

            //var request = new XMLHttpRequest();
            //function reqReadyStateChange() {
            //    if (request.readyState == 4) {
            //        var status = request.status;
            //        if (status == 200) {
            //            var response = request.responseText;
            //            var json = JSON.parse(response);
            //            horizontalBarChartData.datasets.data[0] = json.v1x2;
            //            window.myHorizontalBar.update();
            //        }
            //        request.open("GET", "");
            //        request.onreadystatechange = reqReadyStateChange;
            //        request.send();
            //    }
            //}
        }

        setInterval(graphUpdate, 1000) // использовать функцию

        var ctx = document.getElementById('ComissionsChart').getContext('2d');
        var chart = new Chart(ctx, {
            // The type of chart we want to create
            type: 'horizontalBar',

            // The data for our dataset
            data: {
                datasets: [{
                    backgroundColor: [window.chartColors.com1, window.chartColors.com1, window.chartColors.com1, window.chartColors.com2, window.chartColors.com2, window.chartColors.com2, window.chartColors.com2, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3, window.chartColors.com3],
                    //backgroundColor: window.chartColors.yellow,
                    //borderColor: window.chartColors.birusa,
                    //borderWidth: 4,

                    data: [

                        0
                    ],

                }],
                labels: [
                    '1-2', '3-4', '5-6', '7-10', '11-20', '21-35', '36-50', '51-60', '61-80', '81-100', '101-120', '121-140', '141-180', '181-250', '>250'
                ]
            },
            options: {
                responsive: true,
                legend: {
                    position: 'right',
                    display: false,
                },
                title: {
                    display: false,
                    text: 'Chart.js Doughnut Chart'
                },
                animation: {
                    animateScale: false,
                    animateRotate: false
                },

            }
        });
    </script>
</body>
</html>