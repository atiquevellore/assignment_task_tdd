
# assignment_task_tdd

## Instructions to Set Up RVM, Use Ruby 3.0, and Run Tests with RSpec

1. **Install RVM (Ruby Version Manager):**
    - Open your terminal and run the following command to install RVM:
      ```bash
      \curl -sSL https://get.rvm.io | bash -s stable
      ```
    - After installation, reload your shell configuration:
      ```bash
      source ~/.rvm/scripts/rvm
      ```

2. **Install Ruby 3.0:**
    - Use RVM to install Ruby 3.0:
      ```bash
      rvm install 3.0
      ```
    - use Ruby 3.0 version:
      ```bash
      rvm use 3.0 
      ```

3. **Install Bundler:**
    - Ensure you have Bundler installed by running:
      ```bash
      gem install bundler
      ```

4. **Install Dependencies:**
    - Navigate to your project directory and install the required gems:
      ```bash
      bundle install
      ```

5. **Run Tests with RSpec:**
    - Execute the following command to run the tests:
      ```bash
      bundle exec rspec
      ```