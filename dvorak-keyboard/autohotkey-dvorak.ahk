#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Alt::
KeyWait, Alt
return

LAlt Up::
if (A_PriorKey = "Alt")
	return
return

s::o
d::e
f::u
g::i
h::l
j::d
k::t
l::n
`;::s
q::`;
w::.
e::,
r::p
t::y
y::w
u::h
i::c
o::r
p::g
z::x
x::j
c::k
v::f
n::m
m::q
,::v
.::z

!a::Send {á}
!d::Send {é}
!g::Send {í}
!s::Send {ó}
!f::Send {ú}
!r::Send {ü}
!l::Send {ñ}
!+a::Send {Á}
!+d::Send {É}
!+g::Send {Í}
!+s::Send {Ó}
!+f::Send {Ú}
+!r::Send {Ü}
!+l::Send {Ñ}
!+1::Send {¡}
!+/::Send {¿}

^o::^o
^e::^e
^u::^u
^i::^i
^l::^l
^d::^d
^t::^t
^n::^n
^s::^s
^`;::^`;
^.::^.
^,::^,
^p::^p
^y::^y
^w::^w
^h::^h
^c::^c
^r::^r
^g::^g
^x::^x
^j::^j
^k::^k
^f::^f
^m::^m
^q::^q
^v::^v
^z::^z

#o::#o
#e::#e
#u::#u
#i::#i
#l::#l
#d::#d
#t::#t
#n::#n
#s::#s
#`;::#`;
#.::#.
#,::#,
#p::#p
#y::#y
#w::#w
#h::#h
#c::#c
#r::#r
#g::#g
#x::#x
#j::#j
#k::#k
#f::#f
#m::#m
#q::#q
#v::#v
#z::#z

MButton::return

#Space::
Suspend
Pause,,1
return