// These are the form selectors
const form = document.querySelector("#booking-form")
const date_select = document.querySelectorAll(".select-date");
const start_date = document.querySelector("#start-date");
const end_date = document.querySelector("#end-date");

// These are the output selectors
const price_output = document.querySelector("#total-price");
const days_output = document.querySelector("#total-days");

date_select.forEach((field) => {
  field.addEventListener("change", (e) => {
    const starting = Date.parse(start_date.value);
    const ending = Date.parse(end_date.value);
    const price = parseInt(form.dataset.price, 10);
    const mins = 1000 * 60;
    const hours = mins * 60;
    const days = hours * 24;
    const difference = Math.round((ending - starting) / days);
    const total_price = difference * price.toFixed(2);
    price_output.insertAdjacentHTML("beforeend", `Price: ${total_price}`);
    days_output.insertAdjacentHTML("beforeend", `Days: ${difference}`);
  })
})