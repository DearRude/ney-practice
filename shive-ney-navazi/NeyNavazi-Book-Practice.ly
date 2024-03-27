\version "2.24.3"

\header {
  title = "تمرین کتاب نی‌نوازی"
  subtitle = "ابراهیم نجاتی"
  instrument = "نی"
  copyright = "CC-BY-CA"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
  }
}

\language "english"

global = {
  \numericTimeSignature
  \time 4/4
}


make-score =
#(define-void-function
  (instrumentName bookSuffix musicContent)
  (string? string? ly:music?)
  (toplevel-score-handler #{
    \score {
      \new Staff \with {
        instrumentName = #instrumentName
      } { #musicContent }
      \layout { }
    }
                          #})
  (toplevel-book-handler #{
    \book {
      \bookOutputSuffix #bookSuffix
      \score {
        \new Staff \with {
          midiInstrument = "piccolo"
        } { #musicContent }
        \midi {
          \tempo 4 = 76
        }
      }
    }
                         #}))

% Usage
\make-score "۱" "01" \relative c' {
  \global
  c1 d1 e1 f1 g1 a1 
  a1 g1 f1 e1 d1 c1 \fermata \bar "|."
}

\make-score "۲" "02" \relative c' {
  \global
  c2 d2 e2 f2 g2 a2 
  a2 g2 f2 e2 d2 c2 \fermata \bar "|."
}

\make-score "۳" "03" \relative c' {
  \global
  c4 d4 e4 f4 g4 a4 
  g4 f4 e4 d4 c2 \fermata \bar "|."
  
}

\make-score "۴" "04" \relative c' {
  \global
  c8 d8 e8 f8 g8 a8 
  a8 g8 f8 e8 d8 c8
  c8 d8 e8 f8 g8 a8 
  a8 g8 f8 e8 d8 c8
  c1 \fermata \bar "|."
}

\make-score "۵" "05" {
  \global
  c'2 d'2 c'2 e'2 c'2 f'2 c'2 g'2 c'2 a'2
  c'2 a'2 c'2 g'2 c'2 f'2 c'2 e'2 c'2 d'2
  c'1 \fermata \bar "|."
}

\make-score "۶" "06" {
  \global
  c'4 d'4 c'4 e'4 c'4 f'4 c'4 g'4 c'4 a'4
  c'4 a'4 c'4 g'4 c'4 f'4 c'4 e'4 c'4 d'4
  c'1 \fermata \bar "|."
}

\make-score "۷" "07" {
  \global
  c'4 (d'4 c'4 e'4 c'4 f'4 c'4 g'4)
  c'4 (a'4 c'4 a'4 c'4 g'4 c'4 f'4) 
  c'4 (e'4 c'4 d'4 c'1 \fermata) \bar "|."
}

\make-score "۸" "08" {
  \numericTimeSignature
  \time 2/4
  d'8 c'8 e'8 c'8 f'8 c'8 g'8 c'8 a'8 c'8
  a'8 c'8 g'8 c'8 f'8 c'8 e'8 c'8 d'8 c'8
  c'2 \fermata \bar "|."
}

\make-score "۹" "09" {
  \numericTimeSignature
  \time 2/4
  d'8 (c'8 e'8 c'8 f'8 c'8 g'8 c'8 a'8 c'8)
  a'8 (c'8 g'8 c'8 f'8 c'8 e'8 c'8 d'8 c'8)
  c'2 \fermata \bar "|."
}

\make-score "۱۰" "10" \relative c' {
  \global
  c4 e4 d4 f4 e4 g4 f4 a4
  a4 f4 g4 e4 f4 d4 e4 c4
  c1 \fermata \bar "|."
}

\make-score "۱۱" "11" \relative c' {
  \numericTimeSignature
  \time 2/4
  e8 c8 f8 d8 g8 e8 a8 f8
  a8 f8 g8 e8 f8 d8 e8 c8
  c2 \fermata \bar "|."
}

\make-score "۱۲" "12" \relative c' {
  \numericTimeSignature
  \time 2/4
  e8 (c8 f8 d8 g8 e8 a8 f8)
  a8 (f8 g8 e8 f8 d8 e8 c8)
  c2 \fermata \bar "|."
}

\make-score "۱۳" "13" \relative c' {
  \global
  c4 f4 d4 g4 e4 a4
  a4 e4 g4 d4 f4 c4
  c1 \fermata \bar "|."
}

\make-score "۱۴" "14" {
  \numericTimeSignature
  \time 2/4
  f'8 c'8 g'8 d'8 a'8 e'8
  a'8 e'8 g'8 d'8 f'8 c'8
  e'8 c'8 
  c'4 c'2 \fermata \bar "|."
}

\make-score "۱۵" "15" {
  \numericTimeSignature
  \time 2/4
  f'8 (c'8 g'8 d'8 a'8 e'8)
  a'8 (e'8 g'8 d'8 f'8 c'8)
  e'8 c'8 
  c'4 (c'2 \fermata) \bar "|."
}

\make-score "۱۶" "16" \relative c' {
  \numericTimeSignature
  \time 2/4
  c8 (d16 c16)
  d8 (e16 d16)
  e8 (f16 e16)
  f8 (g16 f16)
  e4 r4 
  d2 \fermata \bar "|."
}

\make-score "۱۷" "17" \relative c' {
  \numericTimeSignature
  \time 2/4
  \repeat unfold 2 {
    d8 a'8 a8 a8
    g8 a8 a8 g8
    f4 g4
  }
  
  f8 g8 a8 f8
  e8 g8 e8 d8
  a'4 g4
  
  f8 g8 a8 f8
  e8 g8 e8 d8
  g4 d4

  c8 d8 d8 d8
  d4 d8 c8
  f4 e4
  
  c8 d8 d8 d8
  d4 d8 c8
  e4 d4 \fermata \bar ":|."
}

