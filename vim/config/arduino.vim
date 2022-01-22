let g:arduino_use_vimux=1
let g:arduino_telescope_enabled=0
let g:arduino_nvim_select_enabled=0

nnoremap <leader>am :ArduinoVerify<CR>
nnoremap <leader>au :ArduinoUpload<CR>
nnoremap <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <leader>ab :ArduinoChooseBoard<CR>
nnoremap <leader>ap :ArduinoChooseProgrammer<CR>
