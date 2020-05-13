<?php header("Content-type: text/css");

//Creo un array con varios colores
$color[0]='#3A3A3B';
$color[1]='#636468';


// Elijo un color aleatorio
$i=rand(0,0);
$u=rand(5,0);
?>

.body1{
    background: url('back.jpg') repeat center fixed;
    background-size: cover;
    position:relative;
    height:auto;
}
.div1{
    margin-left:auto;
    margin-right: auto;
    margin-bottom: 20px;
    display: block; 
    font-weight: lighter;
}
.div2{
    margin-left: 15%;
    margin-right: auto;
    margin-bottom: 20px;
    display: block; 
    font-weight: lighter;

}

.h21{
    text-align:center;
    font-weight: lighter;
    font-size: 3.56rem;
    color: white;
}

.text1{    
    font-size: 1.3em;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #9e9e9e;
    border-radius: 0;
    outline: none;
    height: 3rem;
    width: 100%;
    margin: 0 0 8px 0;
    padding: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
    -webkit-transition: border .3s, -webkit-box-shadow .3s;
    transition: border .3s, -webkit-box-shadow .3s;
    transition: box-shadow .3s, border .3s;
    transition: box-shadow .3s, border .3s, -webkit-box-shadow .3s;
    color: white;
}
.data{
    font-weight: lighter;
    font-size: 1.4em;
    color: white;
}
.form1{
    width: 45%;

}
.btn1 {
  position: relative;
  top: 50%;
  left: 40%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color:#0000004d;
  color: white;
  font-size: 1em;
  padding: 12px 26px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.btn1:hover {
  background-color: lightgray;
  color: black;
}

.headr{
    display:flex;
    justify-content:flex-start;
    line-height: 110%;
    margin-left: 5%;
    margin: 2.3733333333rem 0 1.424rem 0;
}
.shield{
    display:flex;
    justify-content:center;
    text-align:center;
    line-height: 110%;
    margin: 2.3733333333rem 0 1.424rem 0;
    color: white;
}
.img1 {
    width: 10%;
    height: 10%;
}