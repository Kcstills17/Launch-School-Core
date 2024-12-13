$(() => {
    let $slideshow = $("#slideshow"); 
    let $nav = $slideshow.find('ul'); 

    $nav.on('click', 'a', function(e) {
        e.preventDefault(); 
        let $li = $(e.currentTarget).closest('li'); 
        console.log($li[0])
        let idx = $li.index(); 
        console.log(idx)

        $slideshow.find('figure').stop().filter(':visible').fadeOut(300); 
        $slideshow.find('figure').eq(idx).delay(300).fadeIn(300); 
        $nav.find('.active').removeClass('active'); 
        $li.addClass('active'); 
    })
})