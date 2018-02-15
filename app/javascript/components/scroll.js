const links = document.querySelectorAll('.navbar-wagon-link');
const buton = document.querySelectorAll('.coordonnees');

// const sections = document.querySelectorAll('.section');
// sections.forEach(section => {
//   console.log()
//   console.log(section.getBoundingClientRect());
// });

function handleClick(event) {
  if (event.target.classList.contains('presentation')) {
    document.querySelector('#presentation').scrollIntoView({ behavior: "smooth", block: "start"});
  } else if (event.target.classList.contains('competences')) {
    document.querySelector('#competences').scrollIntoView({ behavior: "smooth", block: "start"});
  } else if (event.target.classList.contains('projets')) {
    document.querySelector('#projets').scrollIntoView({ behavior: "smooth", block: "start"});
  } else if (event.target.classList.contains('contact')) {
    document.querySelector('#contact').scrollIntoView({ behavior: "smooth", block: "start"});
  } else if (event.target.classList.contains('coordonnees')) {
    document.querySelector('#contact').scrollIntoView({ behavior: "smooth", block: "start"});
  }
}

links.forEach(link => link.addEventListener('click', handleClick))
buton.forEach(buton => buton.addEventListener('click', handleClick))

