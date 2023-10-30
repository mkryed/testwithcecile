name: Copy .lkml Files to Another Repository

on:
  push:
    branches:
      - master

jobs:
  copy_lkml:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Source Repository
        uses: actions/checkout@v4
        with:
          repository: mkryed/testwithcecile

      - name: Find and Copy .lkml Files
        run: |
          find . -type f -name '*.lkml' -exec sh -c 'mkdir -p target_repository/$(dirname "{}") && cp "{}" target_repository/{}' \;

      - name: Commit and Push to Target Repository
        run: |
          git config --global user.email "actions@github.com"
          git config --global user.name "GitHub Actions"
          git clone https://mkryed:${{ secrets.TARGET }}@github.com/mkryed/test_sync_external_files target_repository
          cd target_repository
          git add .
          git commit -m "Add .lkml files"
          git push origin master

