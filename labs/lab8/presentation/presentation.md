---
## Front matter
lang: ru-RU
title: Лабораторная работа №8
subtitle: Математическое моделирование
author:
  - Чекалова Л. Р.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 24 марта 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Чекалова Лилия Руслановна
  * студент 3 курса группы НФИбд-02-20
  * ст. б. 1032201654
  * Российский университет дружбы народов
  * [1032201654@pfur.ru](mailto:1032201654@@pfur.ru)

:::
::::::::::::::

# Вводная часть

## Актуальность

- Применение модели в экономике
- Необходимость визуализировать данные
- Простота построения моделей

## Цели и задачи

- Построить модель конкуренции двух фирм с помощью Julia и OpenModelica
- Визуализировать построенную модель
- Проанализировать результаты

## Материалы и методы

- Средства языка `Julia` для визуализации данных
- GUI `OMEdit` для визуализации данных на `OpenModelica`
- Результирующие форматы
	- `jl`
	- `mo`
	- `png`

# Ход работы

## Модель конкуренции двух фирм

- 1 случай: $\begin{cases}\frac{\text{d}M_{1}}{\text{d}\theta} = M_{1}-\frac{b}{c_{1}}M_{1}M_{2}-\frac{a_{1}}{c_{1}}M_{1}^{2}\\\frac{\text{d}M_{2}}{\text{d}\theta} = \frac{c_{2}}{c_{1}}M_{2}-\frac{b}{c_{1}}M_{1}M_{2}-\frac{a_{2}}{c_{1}}M_{2}^{2}\end{cases}$
- 2 случай: $\begin{cases}\frac{\text{d}M_{1}}{\text{d}\theta} = M_{1}-(\frac{b}{c_{1}} + k)M_{1}M_{2}-\frac{a_{1}}{c_{1}}M_{1}^{2}\\\frac{\text{d}M_{2}}{\text{d}\theta} = \frac{c_{2}}{c_{1}}M_{2}-\frac{b}{c_{1}}M_{1}M_{2}-\frac{a_{2}}{c_{1}}M_{2}^{2}\end{cases}$
- $a_{1} = \frac{p_{cr}}{\tau_{1}^{2}\tilde{p}_{1}^{2}Nq}$, $a_{2} = \frac{p_{cr}}{\tau_{2}^{2}\tilde{p}_{2}^{2}Nq}$, $b = \frac{p_{cr}}{\tau_{1}^{2}\tilde{p}_{1}^{2}\tau_{2}^{2}\tilde{p}_{2}^{2}Nq}$
- $c_{1} = \frac{p_{cr}-\tilde{p}_{1}}{\tau_{1}\tilde{p}_{1}}$, $c_{2} = \frac{p_{cr}-\tilde{p}_{2}}{\tau_{2}\tilde{p}_{2}}$

## Программа на языке Julia для первого случая

![](image/1.png){height=90% width=90%}

## График изменения оборотных средств двух фирм на языке Julia

![](image/lab8_1.png){height=90% width=90%}

## Программа на языке Julia для второго случая

![](image/2.png){height=90% width=90%}

## График изменения оборотных средств двух фирм на языке Julia

![](image/lab8_2.png){height=90% width=90%}

## Программа на языке OpenModelica для первого случая

![](image/3.png){height=90% width=90%}

## График изменения оборотных средств двух фирм на языке OpenModelica

![](image/lab8_om1.png){height=90% width=90%}

## Программа на языке OpenModelica для второго случая

![](image/4.png){height=90% width=90%}

## График изменения оборотных средств двух фирм на языке OpenModelica

![](image/lab8_om2.png){height=90% width=90%}

# Результаты

## Результаты работы

- Отточены навыки работы с Julia и OpenModelica
- Построена модель конкуренции двух фирм
- Построены графики изменения оборотных средств двух компаний для двух случаев