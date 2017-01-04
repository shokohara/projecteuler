name := "scala-euler"

version := "1.0.0-SNAPSHOT"

organization := "com.github.shokohara"

scalaVersion := "2.12.0"

libraryDependencies ++= Seq(
  "org.scalaz" %% "scalaz-core" % "7.2.7",
  "org.scalatest" %% "scalatest" % "3.0.1" % "test"
)
