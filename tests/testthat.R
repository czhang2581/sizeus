library(testthat)
library(sizeus)

test_that("shoesize convert international shoe sizes to US shoe sizes", {
  expect_equal(shoesize("male","UK",9), "Your US shoe size is 9.5. Go shopping!")
  expect_equal(shoesize("FeMalE","United Kingdom",8),   "Your US shoe size is 10. Go shopping!")
  expect_equal(shoesize("MalE","EU", 42),  "Your US shoe size is 9. Go shopping!")
  expect_equal(shoesize(,"europe", '40'),  "Your US shoe size is 9.5. Go shopping!")
})

test_that("str_length of factor is length of level", {
  expect_equal(shoesize("child","europe",35), "Please specify your gender (male/female)")
  expect_equal(shoesize("male","uk",1), "Sorry, your size input is invalid")
  expect_equal(shoesize("Female","Japan",36), "Sorry, we only support UK and Europe size to US size.")
})
