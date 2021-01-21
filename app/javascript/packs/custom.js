// const colorCups = () => {
  const img = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  const glasses = document.querySelectorAll("#glasses")
  const glass = document.querySelectorAll("#glass");


  glasses.forEach((item, i) => {
    item.addEventListener('mouseover', function(){
      const random_img = (img[Math.floor(Math.random() * img.length)]);
      glass[i].src = `././assets/color${random_img}.PNG`;
    })
    item.addEventListener('mouseout', function(){
      glass[i].src = "././assets/glass.PNG";
    })
  });
// }

// document.addEventListener('turbolinks: load', () => {
//   colorCups();
// })
