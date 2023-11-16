
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




test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur.", {
  directory <- getwd()
  relative_path <- file.path(directory,"/200401011/Labex1_Q1_200401011_unal_fatih.R")
  source(relative_path)
  
  file_path <- file.path(directory,"/200401011/MapsThatChangedOurWorld_StoryMap_Data.csv")
  expect_true(file.exists(file_path), info = "Dosya yok.")
  
})


test_that("Test : maps adlı değiken Global Workspace’de mevcuttur.",{
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.") 
  
})

test_that("Test : maps nesnesi bir data.frame'dir.",{
  expect_is(maps,"data.frame",info = "maps nesnesi data.frama değil")
})

test_that("Test : idx nesnesinin tipi (class’ı) integer’dir.",{
  expect_is(idx,"integer",info = "maps nesnesi integer değil")
})
test_that("Test : maps nesnesi bir data.frame'dir.",{
  expect_is(maps,"data.frame",info = "maps nesnesi data.frama değil")
})

