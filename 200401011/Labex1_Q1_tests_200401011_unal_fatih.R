
test_that("tüm değişkenleri sil", {
  rm(list = ls())
  expect_equal(length(ls()), 0)
})




test_that("Eğer mevcut ise veri setini silme", {
  if ("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files()) {
    file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
  }
  expect_equal("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files(), FALSE)
})




test_that("MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya mevcuttur.", {
  directory <- getwd()
  relative_path <- file.path(directory,"/200401011/Labex1_Q1_200401011_unal_fatih.R")
  source(relative_path)
  
  file_path <- file.path(directory,"/200401011/MapsThatChangedOurWorld_StoryMap_Data.csv")
  expect_true(file.exists(file_path), info = "Dosya yok.")
  
})


test_that("maps adlı değişken mevcuttur",{
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.") 
  
})

