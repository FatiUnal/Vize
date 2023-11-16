
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
  relative_path <- file.path(directory,"/Labex1_Q1_200401011_fatih_unal.R")
  source(relative_path)
  file_path <- file.path(directory,"MapsThatChangedOurWorld_StoryMap_Data.csv")
  expect_true(file.exists(file_path), info = "Dosya yok.",FALSE)
  
})


test_that("Test : maps adlı değiken Global Workspace’de mevcuttur.",{
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.") 
})

test_that("Test : maps nesnesi bir data.frame'dir.",{
  expect_is(maps,"data.frame",info = "maps nesnesi data.frama değil")
})

test_that("Test : maps adlı data.frame'in ilk sütunu 'City' olmalıdır.", {
  expect_equal(colnames(maps)[1], "City", info = "İlk sütun 'City' değil.")
})

test_that("Test : maps adlı data.frame'in 5. sütununun adında 'Title' kelimesi geçmelidir.", {
  expect_true(grepl("Title", colnames(maps)[5], fixed = TRUE), info = "5. sütunun adında 'Title' kelimesi geçmiyor.")
})




test_that("Test : idx nesnesi Global Workspace’de mevcuttur.",{
  expect_true(exists("idx", envir = .GlobalEnv), info = "idx adlı değişken mevcut değil.") 
})

test_that("Test : idx nesnesinin tipi (class’ı) integer’dir.",{
  expect_is(idx,"integer",info = "idx nesnesi integer değil")
})


test_that("Test : Latitude adlı sütun numeric değerlerden oluşmalıdır.", {
  expect_is(maps$Latitude, "numeric", info = "Latitude sütunu numeric değerlerden oluşmuyor.")
})

test_that("Test : Year adlı sütun numeric değerlerden oluşmalıdır.", {
  expect_is(maps$Year, "numeric", info = "Year sütunu numeric değerlerden oluşmuyor.")
})


test_that("Longitude adlı sütunun 3.,  9. ve 10. elementleri negatif numeric değerler içermelidir.", {
  expect_true(all(maps$Longitude[idx] < 0))
})




test_that("Test : finalResult adlı değiken Global Workspace’de mevcuttur.",{
  expect_true(exists("finalResult", envir = .GlobalEnv), info = "finalResult adlı değişken mevcut değil.") 
})

test_that("Test : finalResult nesnesi bir data.frame'dir.",{
  expect_is(finalResult,"data.frame",info = "finalResult nesnesi data.frama değil")
})

test_that("Test : finalResult adlı data.frame 3 sütundan oluşmaktadır.",{
  expect_true(ncol(finalResult)==3)
})

test_that("Test : finalResult adlı data.frame sütün isimleri sırasıyla Longitude, Latitude ve Year olmalıdır.",{
  expect_equal(colnames(finalResult),
              c( "Longitude", "Latitude" ,"Year"),
              info = "Sutun adları aynı olmalıdır")
})





