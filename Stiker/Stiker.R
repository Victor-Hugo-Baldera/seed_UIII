library(huito)
font <- c("Paytone One", "Courgette")

huito_fonts(font)

label <- label_layout(size = c(4.8, 4.8)
                     , border_width = 0
                     , background = "#efe8e0"
) %>%

  include_text(value = "Producción", size = 15, position = c(2.4, 3.3), color = "brown", font [1]) %>%
  include_text(value = " Y ", size = 15 , position = c(2.4, 2.7), color = "brown", font[1]) %>%
  include_text(value = " Tecnología", size = 15 , position = c(2.4, 2.3), color = "#30784c", font[2]) %>%
  include_text(value = " De Semillas", size = 15 , position = c(2.4, 1.6), color = "brown", font[1]) %>%
  
  include_shape(size = 4.8
                , border_width = 3
                , border_color = "#30784c"
                , position = c(2.4, 2.4)
                , panel_color = "blue"
  ) %>%   
  include_text(value = "Grupo 6"
                  , size = 6
                  , position = c(3.6, 0.82)
                  , angle = 30
                  , color = "white"
                  , font[1] 
  ) %>% 
  include_image(value = "Stiker/pla.png"
                , size = c(1, 1) 
               , position = c(2.5, 0.8)
  ) 

label %>% 
  label_print(mode = "preview")


sticker <- label %>% 
  label_print(filename = "logo"
              , margin = 0
              , paper = c(5.5, 5.5)
              , mode = "complete"
  )

# transparent -------------------------------------------------------------
# -------------------------------------------------------------------------

sticker %>% 
  image_read_pdf()  %>% 
  image_transparent("blue") %>% 
  image_crop(geometry = "600x600+40") %>%
  image_crop(geometry = "560x600-40") %>%
  
  image_write("logo.png")
