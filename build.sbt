name := "codewars"

version := "1.0"

scalaVersion := "2.13.4"

scalacOptions ++= Seq("-deprecation", "-feature", "-unchecked", "-Xlint")

libraryDependencies ++= Seq(
  "org.scalatest" %% "scalatest" % "3.2.9" % "test",
  "org.scalactic" %% "scalactic" % "3.2.9"
)
