$(document).ready(
     function(){
       xx.getThumbnail();
      }
)

var xJs=function(){
    this.getHits=function(documentid){
            $("#"+documentid).html("...");
            $.get("ListHits.axd",{id:documentid},function(data){$("#"+documentid).html(data); })
            };
    this.getThumbnail=function(){
           $("img[src2]").each(function(i){
           var src2=$(this).attr("src2");
           var width=$(this).attr("width");
           var height=$(this).attr("height");
           var url="Thumbnail.axd?src="+src2+"&width="+width+"&height="+height+"&t="+Math.random();
           $.get(url,function(data){$("img[src2]")[i].src=data;})
        })
    }
}
var xx=new xJs();