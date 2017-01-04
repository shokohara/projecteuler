package com.github.shokohara.euler

import com.github.shokohara.euler.Problem01._
import org.scalatest._

class Problem01Spec extends FlatSpec with Matchers {
  "Problem1" should "resolve" in {
    f(10) shouldBe 23
  }
}
