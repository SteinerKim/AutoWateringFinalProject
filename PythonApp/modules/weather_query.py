"""
Weather Query

@author Cameron Castillo
@author Kim Steiner

This class queries the OpenWeatherMap database
for the available weather data. Just used as an 
interface back to the data from the web.

@note this file was written completely by ChatGPT

"""
import requests, json

class WeatherApp:
    """
    A class to query weather data from OpenWeatherMap API and return data in text format.
    """
    def __init__(self, city="New York", units="metric"):
        self.api_key = "338944843ad4d2a7407e4127907d24ab"
        self.city = city
        self.units = units
        self.base_url = "https://api.openweathermap.org/data/2.5/weather"

    def get_weather_data(self):
        """
        Fetches weather data from OpenWeatherMap API.
        """
        params = {
            "q": self.city,
            "appid": self.api_key,
            "units": self.units
        }
        try:
            response = requests.get(self.base_url, params=params)
            response.raise_for_status()
            return response.json()
        except requests.exceptions.RequestException as e:
            return f"Error fetching weather data: {e}"

    def parse_weather_data(self, data):
        """
        Parses relevant weather information from the API response.
        """
        if "main" not in data or "weather" not in data:
            return "Invalid weather data received."

        temp = data["main"].get("temp", "N/A")
        humidity = data["main"].get("humidity", "N/A")
        description = data["weather"][0].get("description", "N/A")
        wind_speed = data.get("wind", {}).get("speed", "N/A")

        return (
            f"Weather in {self.city}: \n"
            f"Temperature: {temp}C\n"
            f"Humidity: {humidity}%\n"
            f"Condition: {description.capitalize()}\n"
            f"Wind Speed: {wind_speed} m/s\n"
        )

    def fetch_and_display_weather(self):
        """
        Combines fetching and displaying the weather in one call.
        """
        data = self.get_weather_data()
        return self.parse_weather_data(data)
