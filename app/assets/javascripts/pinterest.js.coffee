masonryAllTheThings = ->
  $('.pinterest-grid').imagesLoaded ->
    $('.pinterest-grid').masonry
      itemSelector: '.pin-item'
      columnwidth: '.pin-item'
    return
  return

$(document).ready masonryAllTheThings
$(document).on 'page:load', masonryAllTheThings

