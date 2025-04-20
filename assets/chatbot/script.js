const chatBox = document.getElementById("chat-box");
const userInput = document.getElementById("user-input");

// Auto greeting on load hanzi yesi
window.onload = () => {
  botReply(`Hi, I am ZundeBot! 👋<br><br>Zunde is a smart savings community powered by smart contracts. You save money, earn credit scores, and get payouts when it’s your turn. 💰<br><br>What would you like to know?<br>1️⃣ How do I join Zunde?<br>2️⃣ How to make contributions?<br>3️⃣ When do I get paid?<br>4️⃣ What is a credit score in Zunde?<br>5️⃣ Can I withdraw anytime?<br>6️⃣ Other`);
};

userInput.addEventListener("keypress", function (e) {
  if (e.key === "Enter") {
    const message = userInput.value.trim();
    if (message) {
      addMessage("You", message, "user");
      respondToInput(message.toLowerCase());
      userInput.value = "";
    }
  }
});

function addMessage(sender, text, className) {
  const message = document.createElement("div");
  message.className = `message ${className}`;
  message.innerHTML = `<strong>${sender}:</strong> ${text}`;
  chatBox.appendChild(message);
  chatBox.scrollTop = chatBox.scrollHeight;
}

function botReply(text) {
  addMessage("ZundeBot", text, "bot");
}

function respondToInput(input) {
  switch (input) {
    case "1":
    case "how do i join zunde":
      botReply("To join Zunde, download the app and register using your phone number. 🎉 You’ll be added to a smart savings group!");
      break;
    case "2":
    case "how to make contributions":
      botReply("You contribute by sending money directly via the app. It’s all handled by a smart contract—secure and automatic. 💸");
      break;
    case "3":
    case "when do i get paid":
      botReply("You receive your payout when it’s your turn in the cycle. The app notifies you in advance. ⏳");
      break;
    case "4":
    case "what is a credit score in zunde":
      botReply("Your credit score increases as you contribute consistently and on time. It can qualify you for bonuses or rewards! ⭐");
      break;
    case "5":
    case "can i withdraw anytime":
      botReply("Nope, you get your payout only when it’s your turn. That’s how we ensure everyone gets a fair share! 🔄");
      break;
    case "6":
    case "other":
      botReply("Please type your question and I’ll try my best to help you. 💬");
      break;
    default:
      botReply("Sorry, I didn’t understand that. Please choose an option (1-6) or ask something else.");
  }
}

