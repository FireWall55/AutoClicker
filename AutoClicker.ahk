#Requires AutoHotkey v2.0
#MaxThreadsPerHotKey 2

global val := false

^f::{
    Toggle := val
    while Toggle{
        Toggle := val
        Click
        sleep 0
    }
    return
}

ToggleGlobalVar(){
    global val
    val := !val
}

^q::ToggleGlobalVar()

^i::{
    ExitApp
}

