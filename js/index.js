
$("#footer").load("data/footer.php");
//轮播图
$(function(){
    $('.carousel').carousel({
        interval: 3000
    });
});

//懒加载页面
function isVisble($node){
    let wiH=$(window).height(),scroTop=$(window).scrollTop(),//滚动的距离
		offsetTop=$($node).offset().top;//元素到文档顶部的距离
    console.log(offsetTop);
    if(offsetTop < wiH+scroTop){
       return true;
    }else{
        return false;
    }
}
$(window).scroll(function(){
    //console.log(isVisble(".product"));
    if(isVisble!=null){
        if(isVisble(".product")){
            var html =`
          <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="animation-slide-top">产品展示</h2>
                <p class="join">Prouduct</p>
            </div>
        </div>
        <div class="row tea-nav">
            <div class="col-sm-12 col-sm-offset-4  ">
            <ul class="nav nav-pills">
                <li class="active"><a href="#all" data-toggle="tab">全部</a></li>
                <li><a href="#qing"  data-toggle="tab">清茶系列</a></li>
                <li><a href="#green"  data-toggle="tab">绿茶系列</a></li>
                <li><a href="#black"  data-toggle="tab">黑茶系列</a></li>
                <li><a href="#flower"  data-toggle="tab">花果茶系列</a></li>
            </ul>
            </div>
        </div>
        <div class="row" id="product-img">
        </div>
    </div>
       `;
            $(".product").html(html);
            isVisble = null;
            //产品展示中的分类点击事件
            $("[data-toggle='tab']").click((e)=>{
                var that=$(e.target);
                var classtiy = that.attr("href").slice(1);
                //console.log(classtiy);
                productTea(classtiy);
            });
            //点击事件
            function productTea(teaClass){
                $.get("data/index.php?classtiy="+teaClass).then((data)=>{
                    var html="";
                    //console.log(data);
                    for(var s of data){
                        html +=`
           <div class="col-md-3 col-xs-6">
                <div class="product-all">
                    <a href=""><img src="${s.pimg}" title="${s.p_title}"></a>
                    <h4><a href="#">${s.p_title}</a></h4>
                </div>
            </div>
        `}
                    $("#product-img").html(html);
                });
            }
            productTea("all");
        }
    }

});

