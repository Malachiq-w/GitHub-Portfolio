// Malachi Chaya | 25 Sept 2025 | Calculator //<>//
Button[] buttons = new Button[13];
Button[] numButtons = new Button[10];
float l, r, result;
boolean left;
String dVal;
String op;


void setup() {
  size(220, 290);
  background(155);
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = "";
  buttons[0] = new Button(25, 105, 30, 30, "C", #C60E1A, #7C0404);
  buttons[1] = new Button(25, 145, 30, 30, "OFF", #C60E1A, #7C0404);
  buttons[2] = new Button(25, 185, 30, 30, ".", #C9CBCB, #837E7E);
  buttons[3] = new Button(25, 225, 30, 30, "±", #C9CBCB, #837E7E);
  buttons[4] = new Button(25, 265, 30, 30, "ABS", #673C3D, #502829);
  numButtons[7] = new Button(65, 105, 30, 30, "7", #C9CBCB, #837E7E);
  numButtons[4] = new Button(65, 145, 30, 30, "4", #C9CBCB, #837E7E);
  numButtons[1] = new Button(65, 185, 30, 30, "1", #C9CBCB, #837E7E);
  numButtons[0] = new Button(65, 225, 30, 30, "0", #C9CBCB, #837E7E);
  buttons[5] = new Button(65, 265, 30, 30, "²", #673C3D, #502829);
  numButtons[8] = new Button(105, 105, 30, 30, "8", #C9CBCB, #837E7E);
  numButtons[5] = new Button(105, 145, 30, 30, "5", #C9CBCB, #837E7E);
  numButtons[2] = new Button(105, 185, 30, 30, "2", #C9CBCB, #837E7E);
  buttons[6] = new Button(125, 225, 70, 30, "=", #08893A, #056229);
  buttons[7] = new Button(105, 265, 30, 30, "√", #673C3D, #502829);
  numButtons[9] = new Button(145, 105, 30, 30, "9", #C9CBCB, #837E7E);
  numButtons[6] = new Button(145, 145, 30, 30, "6", #C9CBCB, #837E7E);
  numButtons[3] = new Button(145, 185, 30, 30, "3", #C9CBCB, #837E7E);
  buttons[8] = new Button(145, 265, 30, 30, "^", #673C3D, #502829);
  buttons[9] = new Button(185, 105, 30, 30, "/", #2644FC, #1733E3);
  buttons[10] = new Button(185, 145, 30, 30, "*", #2644FC, #1733E3);
  buttons[11] = new Button(185, 185, 30, 30, "-", #2644FC, #1733E3);
  buttons[12] = new Button(185, 245, 30, 70, "+", #2644FC, #1733E3);
}

void draw () {
  background(155);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107) {
    left = false;
    op = "+";
    dVal = "0.0";
  } else if (keyCode == 45 || keyCode == 109) {
    left = false;
    op = "-";
    dVal = "0.0";
  } else if (keyCode == 106 || keyCode == 61) {
    left = false;
    op = "*";
    dVal = "0.0";
  } else if (keyCode == 47 || keyCode == 111) {
    left = false;
    op = "/";
    dVal = "0.0";
  } else if (keyCode == 46 || keyCode == 110) {
    if (dVal.contains(".") == false) {
      dVal += ".";
    }
  } else if (keyCode == 49 || keyCode == 97) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          l = float(dVal);
        } else {
          dVal += "1";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          r = float(dVal);
        } else {
          dVal += "1";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 50 || keyCode == 98) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          l = float(dVal);
        } else {
          dVal += "2";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          r = float(dVal);
        } else {
          dVal += "2";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 51 || keyCode == 99) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          l = float(dVal);
        } else {
          dVal += "3";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          r = float(dVal);
        } else {
          dVal += "3";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 52 || keyCode == 100) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          l = float(dVal);
        } else {
          dVal += "4";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          r = float(dVal);
        } else {
          dVal += "4";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 53 || keyCode == 101) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          l = float(dVal);
        } else {
          dVal += "5";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          r = float(dVal);
        } else {
          dVal += "5";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 54 || keyCode == 102) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          l = float(dVal);
        } else {
          dVal += "6";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          r = float(dVal);
        } else {
          dVal += "6";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 56 || keyCode == 104) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          l = float(dVal);
        } else {
          dVal += "8";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          r = float(dVal);
        } else {
          dVal += "8";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 57 || keyCode == 105) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          l = float(dVal);
        } else {
          dVal += "9";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          r = float(dVal);
        } else {
          dVal += "9";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 48 || keyCode == 96) {
    if (dVal.length()<11) {
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          l = float(dVal);
        } else {
          dVal += "0";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          r = float(dVal);
        } else {
          dVal += "0";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 10) {
    performCalculation();
  } else if (keyCode == 67) {
    // All actions to clear calc
    left = true;
    l = 0.0;
    r = 0.0;
    result = 0.0;
    dVal = "0.0";
    op = "C";
  }
}


void mousePressed() {
  // Not number buttons
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      left = false;
      op = "+";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l*=-1;
        dVal = str(l);
      } else {
        r*=-1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("²")) {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(l);
        dVal = str(l);
      }
    } else if (buttons[i].over && buttons[i].val.equals("C")) {
      // All actions to clear calc
      left = true;
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = "C";
    } else if (buttons[i].over && buttons[i].val.equals("√")) {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      left = false;
      op = "-";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("/")) {
      left = false;
      op = "/";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("*")) {
      left = false;
      op = "*";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      left = false;
      op = "^";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("ABS")) {
      if (left) {
        l = abs(l);
        dVal = str(l);
      } else {
        r = abs(r);
        dVal = str(r);
      }
    }
  }

  // All number Buttons
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<11) {
      if (numButtons[i].over && left) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else if (numButtons[i].over && !left) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }
    }
  }
  println("L:" + l);
  println("R:" + r);
  println("Result:" + result);
  println("Op:" + op);
  println("Left:" + left);
}

void updateDisplay() {
  rectMode(CORNER);
  rect(20, 30, 180, 40, 5);
  fill(0);
  textSize(35);
  textAlign(RIGHT);
  if (dVal.length()>9) {
    textSize(30);
  } else if (dVal.length()>10) {
    textSize(25);
  } else if (dVal.length()>11) {
    textSize(20);
  }
  text(dVal, width-25, 60);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else   if (op.equals("-")) {
    result = l - r;
  } else   if (op.equals("*")) {
    result = l * r;
  } else   if (op.equals("/")) {
    result = l / r;
  } else   if (op.equals("^")) {
    result = pow(l, r);
  }
  dVal = str(result);
}
