<div align=center>
<h1>STAT 437 - Project 1</h1>

Project 1 from STAT 437 - High Dimensional Learning and Visualization taken from Washington State University's Global Campus during the Spring 2022 semester and was taught by Dr. Xiongzhi Chen.

This project was to assess the knowledge and skills learned about K-means clustering, Hierarchical clustering, Nearest-neighbor classifier, and descriminant analysis for classification. It included the use of the data manipulation and visualization skills learned through the homework assignments. The creation of a this report was to mimic a professional academic publication where the analysis and use of visualizations explains the concepts learned without clutering the report with large portions of code (code is displayed in the Appendix).
</div>

## Table of Contents

- [Built With](https://github.com/DataChris24/STAT437_Project1?tab=readme-ov-file#built-with)
- [Getting Started](https://github.com/DataChris24/STAT437_Project1?tab=readme-ov-file#getting-started)
- [Usage](https://github.com/DataChris24/STAT437_Project1?tab=readme-ov-file#usage)
- [Contributing](https://github.com/DataChris24/STAT437_Project1?tab=readme-ov-file#contributing)
- [Acknowledgements](https://github.com/DataChris24/STAT437_Project1?tab=readme-ov-file#acknowledgements)

## Built With

- ![Static Badge](https://img.shields.io/badge/-4.1.1-blue?style=plastic&logo=r)


Docker compose and supporting files included for the ability to run RStudio within a web browser without having to install RStudio locally.

## Getting Started

There are two options to be able to run the attached R markdown code files. Run locally with RStudio or run with the attached Docker container definition.

- **NOTE:** The `devtools` package requires many system packages as dependencies before successful installation. It's purpose is to document all pacakages and their versions and is not required to view and run the main pieces of the project code. The `devtools` package is used in the last code chunk of the `.rmd` file and can be removed, or you can use the Docker container defined in the `docker-compose.yaml` file to run the file with RStudio in a web browser.

### Running Locally

1. Have R and RStudio installed on your system
2. Download the `.rmd` file(s) and open with RStudio
3. Download the data set [TCGA-PANCAN-HiSeq-801x20531.tar.gz](https://archive.ics.uci.edu/ml/machine-learning-databases/00401/TCGA-PANCAN-HiSeq-801x20531.tar.gz)
4. Uncompress the downloaded data set file and place the two files into a folder named 'data' that is in the same directory as the downloaded `.Rmd` file
5. Install any packages needed that aren't already installed. 

### Running With Docker Container

#### Prerequisites

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/).
2. Create or sign into a Docker account.

#### Installation

1. Clone the repository 

   ```
   git clone https://github.com/DataChris24/STAT437_Project1.git
   ```

3. In your terminal navigate to the root folder of the repo and run 

   ```
   docker compose up
   ```
   
   If you have tried to build this container and had any issues, you may need to run the following code to ensure you get a clean rebuild of the container (though you shouldn't have any issues).

   ```
   docker compose build --no-cache && docker compose up -d --force-recreate
   ```

4. When the container `cmimsstat437` has been started, navigate to your web browser of choice and go to<br>
   `http://localhost:8787`
   <br>**OR**<br>
   `http://your.ip.address.here:8787` <- This is used for Windows machines or if using a Mac or Linix based machine and `localhost` does not work.

5. When the webpage loads<br>
    - username = `rstuido` <br>
    - password = `Password1`

6. Once inside RStuido navigate to the `projects` folder in the `Files` pane (bottom right window)

7. Select either the `Mims_Chris_STAT_437_Project_1.Rmd` file or the `stat437Proj1.Rmd` file to interact with the file and run each of the code blocks. **NOTE:* The first file mentioned is my work while the latter is the file supplied by Dr. Chen as a template.

8. Once you are done interacting with the file, close the browser and in your terminal run 
   
   ```
   docker compose down
   ```

   This will shut down and remove the Docker container.

Also, the PDF and/or HTML output(s) of these R markdown files have also been included in the repository for review without the need to run the code in RStudio or through the use of the Docker container.

## Usage

The purpose of this project is to show my ability to not only use R and the included packages but also my ability to create professional documentation using markdown. The `devtools` package allows for specific citing of packages and their versions for reproducable results. 

## Contributing

Since this is not an ongoing project, there will be no ability to contribute further to the project.

For any suggestions or corrections that need to be made, please submit an issue [here](https://github.com/DataChris24/STAT437_Project1/issues).

## Acknowledgements

I would like to thank Dr. Xiongzhi Chen for his excellence is teaching this course and guiding me and other students to a greater understanding of the R language and its packages for use in the data analytics field and application of statistical concepts. You can more information about Dr. Chen [here](https://www.math.wsu.edu/faculty/xchen/).

The book 'An Introduction of Statistical Learning: with Applications in R' by James, Gareth et al. was used as a reference for greater understanding of the topics discussed in this course.

- James G, Witten D, Hastie T, Tibshirani R. An Introduction to Statistical Learning: with Applications in R. 2nd ed. 2021. Springer; 2022.