// These are the form selectors
const form = document.querySelector("#booking-form")
const date_select = document.querySelectorAll(".select-date");
const start_date = document.querySelector("#start-date");
const end_date = document.querySelector("#end-date");

// These are the output selectors

date_select.forEach((field) => {
  field.addEventListener("change", (e) => {
    const starting = Date.parse(start_date.value);
    const ending = Date.parse(end_date.value);
    const price = parseInt(form.dataset.price, 10);
    const mins = 1000 * 60;
    const hours = mins * 60;
    const days = hours * 24;
    const difference = Math.round((ending - starting) / days);
    const total_price = difference * price.toFixed(2)
    console.log(total_price);
  })
})