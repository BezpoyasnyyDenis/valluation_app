import { createRoot } from "react-dom/client";
import App from "./App";
import "./index.css";

document.title = "Оцінка вартості товару";

createRoot(document.getElementById("root")!).render(<App />);
