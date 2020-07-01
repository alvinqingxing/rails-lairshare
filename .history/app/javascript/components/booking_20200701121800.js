const date_select = document.querySelectorAll(".select-date");

date_select.forEach((field) => {
  field.addEventListener("change", (e) => {
    console.log(e.currentTarget.value)
  })
})