// See LICENSE.txt for license details.
package myProject

import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner

object Launcher {
  val myProject = Map(
      "FirstModule" -> { (manager: TesterOptionsManager) =>
        Driver.execute(() => new FirstModule(), manager) {
          (c) => new FirstModuleTB(c)
        }
      }
  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("myProject", myProject, args)
  }
}

