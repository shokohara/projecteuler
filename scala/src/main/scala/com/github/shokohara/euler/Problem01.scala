package com.github.shokohara.euler

import scalaz.Scalaz._
import scalaz._

object Problem01 extends Problem {

  def resolve = f(1000)

  def f(n: Int) = Foldable[List].fold((for (x <- 1 until n if x % 3 == 0 || x % 5 == 0) yield x).toList)
}

//  3 solve = f 1000
//  4
//  5 f n = sum [ x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0]
