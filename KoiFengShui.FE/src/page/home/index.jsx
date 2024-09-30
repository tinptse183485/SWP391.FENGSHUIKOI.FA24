import HeaderTemplate from "../../components/header-page";
import koiImage from "./path-to-koi-image.jpg";
import "./index.css";
import FooterPage from "../../components/footer-page";
import { Carousel } from "antd";
const contentStyle = {
  margin: 0,
  height: "160px",
  color: "#fff",
  lineHeight: "160px",
  textAlign: "center",
  background: "#364d79",
};
function Home() {
  return (
    <>
      <HeaderTemplate></HeaderTemplate>
      <body>
        {/* Trending Feature */}
        <div className="container">
          <h2>Trending Feature</h2>
          <div className="Card-container">
            <div className="Card">
              <img
                src={koiImage}
                alt="Selecting Pond  according to your Feng Shui element"
                className="img-feature"
              ></img>
              <h3>Selecting Pond according to your Feng Shui element</h3>
              <button className="button">Button</button>
            </div>
            <div className="Card">
              <img
                src={koiImage}
                alt="Selecting Koi fish according to your Feng Shui element"
              ></img>
              <h3>Selecting Koi fish according to your Feng Shui element</h3>
              <button className="button">Button</button>
            </div>
            <div className="Card">
              <img src={koiImage} alt="Post Advertisement Function"></img>
              <h3>Post Advertisement Function</h3>
              <button className="button">Button</button>
            </div>
            <div className="Card">
              <img src={koiImage} alt="Calculate compatibility"></img>
              <h3>Calculate compatibility</h3>
              <button className="button">Button</button>
            </div>
          </div>
        </div>
        {/* Blog */}
        <div className="container">
          <h2>Blog</h2>
          <div className="Card-container">
            <div className="Card">
              <img
                src={koiImage}
                alt="Selecting Pond according to your Feng Shui element"
                className="img-feature"
              ></img>
              <h3>Selecting Pond according to your Feng Shui element</h3>
              <button className="button">Button</button>
            </div>
            <div className="Card">
              <img
                src={koiImage}
                alt="Selecting Koi fish according to your Feng Shui element"
              ></img>
              <h3>Selecting Koi fish according to your Feng Shui element</h3>
              <button className="button">Button</button>
            </div>
            <div className="Card">
              <img src={koiImage} alt="Post Advertisement Function"></img>
              <h3>Post Advertisement Function</h3>
              <button className="button">Button</button>
            </div>
          </div>
        </div>
      </body>
      <FooterPage></FooterPage>
    </>
  );
}

export default Home;
