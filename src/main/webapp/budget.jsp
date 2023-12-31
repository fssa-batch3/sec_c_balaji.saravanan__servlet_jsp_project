<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../assets/css/footer.css">
    <link rel="stylesheet" href="../../assets/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">
    <style>
        body {
            -webkit-text-size-adjust: none;
            color: #B2D665;
            font-size: 1em;
            font-family: "Helvetica Neue", Ubuntu, "WenQuanYi Micro Hei", Helvetica, "Hiragino Sans GB", "Microsoft JhengHei", "PMingLiU", Arial, sans-serif;
            -webkit-font-smoothing: antialiased;
            text-shadow: 0 0 1px rgba(0, 0, 0, 0.1);
            margin: 0px;
            line-height: 1.6em;
            padding: 0px;
            background-color: #eee;
            overflow-x: hidden;
        }

        #Frames,
        .Frame {
            list-style: none;
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            text-align: center;
        }

        #Frames {
            margin: 5% 0;
            width: 100%;

        }

        .Frame {
            /* height: 500px; */
            display: inline-block;
            padding: 40px;
            border-width: 20px;
            border-style: solid;
            border-color: #2F2D2D #434040 #4F4C4C #434040;
            background: #f5f5f5;
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E5E4DF), to(#CDCDC6));
            background-image: -webkit-linear-gradient(#E5E4DF, #CDCDC6);
            background-image: -moz-linear-gradient(#E5E4DF, #CDCDC6);
            background-image: -o-linear-gradient(#E5E4DF, #CDCDC6);
            background-image: linear-gradient(#E5E4DF, #CDCDC6);
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, .6), 0 5px 2px rgba(0, 0, 0, .1), 0 10px 20px rgba(0, 0, 0, .8);
            position: relative;
            overflow: hidden;
            margin: 40px;
        }

        .Frame::before {
            content: "";
            position: absolute;
            top: -175px;
            right: -20%;
            width: 400px;
            height: 400px;
            transform: rotateZ(-40deg);
            -webkit-transform: rotateZ(-40deg);
            -moz-transform: rotateZ(-40deg);
            -o-transform: rotateZ(-40deg);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(255, 255, 255, .4)), to(rgba(255, 255, 255, 0)));
            background-image: -webkit-linear-gradient(rgba(255, 255, 255, .4), rgba(255, 255, 255, 0));
            background-image: -moz-linear-gradient(rgba(255, 255, 255, .4), rgba(255, 255, 255, 0));
            background-image: -o-linear-gradient(rgba(255, 255, 255, .4), rgba(255, 255, 255, 0));
            background-image: linear-gradient(rgba(255, 255, 255, .4), rgba(255, 255, 255, 0));
        }

        .Frame img {
            height: 500px;
            border-width: 2px;
            border-style: solid;
            border-color: #BBBAB4 #C7C7BF #E5E4DF #C7C7BF;
            box-shadow: 0 -1px 1px rgba(0, 0, 0, .1), 0 1px 1px 1px rgba(255, 255, 255, .7);
        }
    </style>
</head>

<body>

<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>
	
    <ul id="Frames">

    </ul>

    <script>

let array_budject = [
            "https://freeimghost.net/images/2023/05/15/2.jpeg",
            "https://freeimghost.net/images/2023/05/15/accident.jpeg",
            "https://freeimghost.net/images/2023/05/15/ilaguragavaganam.jpeg",
            "https://freeimghost.net/images/2023/05/15/inaiyavazhisevai.jpeg",
            "https://freeimghost.net/images/2023/05/15/newrtooffice.jpeg",
            "https://freeimghost.net/images/2023/05/15/setc.jpeg",
            "https://freeimghost.net/images/2023/05/15/thaniyangi.jpeg",
            "https://freeimghost.net/images/2023/05/15/thervuthalam.jpeg",
            "https://freeimghost.net/images/2023/05/15/paruvampayir.jpeg",
            "https://freeimghost.net/images/2023/05/15/ayalnaatu.jpeg",
            "https://freeimghost.net/images/2023/05/15/karupatti2.jpeg",
            "https://freeimghost.net/images/2023/05/15/pazham.jpeg",
            "https://freeimghost.net/images/2023/05/15/frontpage.jpeg",
            "https://freeimghost.net/images/2023/05/15/aalthulai.jpeg",
            "https://freeimghost.net/images/2023/05/15/iyarkaiuram.jpeg",
            "https://freeimghost.net/images/2023/05/15/karupatti.jpeg",
            "https://freeimghost.net/images/2023/05/15/thonmaisaar.jpeg",
            "https://freeimghost.net/images/2023/05/15/karuvigalnialmatar.jpeg",
            "https://freeimghost.net/images/2023/05/15/puvisaar.jpeg",
            "https://freeimghost.net/images/2023/05/15/kurukuraidhaneer.jpeg",
            "https://freeimghost.net/images/2023/05/15/munthiri2.jpeg",
            "https://freeimghost.net/images/2023/05/15/pumset.jpeg",
            "https://freeimghost.net/images/2023/05/15/munthiri.jpeg",
            "https://freeimghost.net/images/2023/05/15/kaveri.jpeg",
            "https://freeimghost.net/images/2023/05/15/vazhai.jpeg",
            "https://freeimghost.net/images/2023/05/15/schooltour2.jpeg",
            "https://freeimghost.net/images/2023/05/15/agriclinic.jpeg",
            "https://freeimghost.net/images/2023/05/15/poochi.jpeg",
            "https://freeimghost.net/images/2023/05/15/schooltour.jpeg",
            "https://freeimghost.net/images/2023/05/15/siruthaniyam.jpeg",
            "https://freeimghost.net/images/2023/05/15/11.jpeg__1080x1080_q85_subsampling-2.jpeg",
            "https://freeimghost.net/images/2023/05/15/4.jpeg",
            "https://freeimghost.net/images/2023/05/15/3.jpeg",
            "https://freeimghost.net/images/2023/05/15/5.jpeg",
            "https://freeimghost.net/images/2023/05/15/6.jpeg",
            "https://freeimghost.net/images/2023/05/15/7.jpeg",
            "https://freeimghost.net/images/2023/05/15/8.jpeg",
            "https://freeimghost.net/images/2023/05/15/9.jpeg",
            "https://freeimghost.net/images/2023/05/15/10.jpeg"
        ]

      for (let values of array_budject){

      
        const list_item= document.createElement("li");
        list_item.setAttribute("class", "Frame");

        const image_img= document.createElement("img");
        image_img.setAttribute("src", values);
        list_item.append(image_img)

        document.querySelector("#Frames").append(list_item);

    }

        
    </script>
    
    
    
    

<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>

</body>

</html>