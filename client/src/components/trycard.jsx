import React, { Component } from "react";
import { render } from "react-dom";

import Swipeable from "react-swipy";

// import Card from "./components/Card";
// import Button from "./components/Button";

const Card = ({ zIndex = 0, children }) => (
    <div style={{ ...cardStyles, zIndex }}>{children}</div>
  );

  const Button = ({ children, onClick }) => (
    <button onClick={onClick} style={{ ...buttonStyles }}>
      {children}
    </button>
  );

  const buttonStyles = {
    padding: "16px 24px",
    background: "whitesmoke",
    cursor: "pointer",
    border: "none",
    borderRadius: 3
  };

  const cardStyles = {
    background: "blue",
    borderRadius: 3,
    width: "450px",
    height: "450px",
    cursor: "pointer",
    userSelect: "none",
    position: "absolute",
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    top: 0
  };

const appStyles = {
  height: "100%",
  display: "flex",
  justifyContent: "center",
  alignItems: "center",
  width: "100%",
  minHeight: "100vh",
  fontFamily: "sans-serif",
  overflow: "hidden"
};

const wrapperStyles = { position: "relative", width: "250px", height: "250px" };
const actionsStyles = {
  display: "flex",
  justifyContent: "space-between",
  marginTop: 200,

};

class Try extends Component {
  state = {
    cards: ["First", "Second", "Third"]
  };

  remove = () =>
    this.setState(({ cards }) => ({ cards: cards.slice(1, cards.length) }));

  render() {
    const { cards } = this.state;

    return (
      <div style={appStyles}>
        <div style={wrapperStyles}>
          {cards.length > 0 && (
            <div style={wrapperStyles}>
              <Swipeable
                buttons={({ right, left }) => (
                  <div style={actionsStyles}>
                    <Button onClick={left}>Reject</Button>
                    <Button onClick={right}>Accept</Button>
                  </div>
                )}
                onAfterSwipe={this.remove}
              >
                <Card>{cards[0]}</Card>
              </Swipeable>
              {cards.length > 1 && <Card zIndex={-1}>{cards[1]}</Card>}
            </div>
          )}
          {cards.length <= 1 && <Card zIndex={-2}>No more cards</Card>}
        </div>
      </div>
    );
  }
}

export default Try;