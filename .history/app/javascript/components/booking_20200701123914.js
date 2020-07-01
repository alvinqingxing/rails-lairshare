const form = document.querySelector("#booking-form")
const date_select = document.querySelectorAll(".select-date");
const start_date = document.querySelector("#start-date");
const end_date = document.querySelector("#end-date");

date_select.forEach((field) => {
  field.addEventListener("change", (e) => {
    const starting = Date.parse(start_date.value);
    const ending = Date.parse(end_date.value);
    const price = parseInt(counter.dataset.count, 10);
    const mins = 1000 * 60;
    const hours = mins * 60;
    const days = hours * 24;
    const difference = Math.round((ending - starting) / days);
    console.log(difference);
  })
})