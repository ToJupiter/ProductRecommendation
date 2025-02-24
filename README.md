```markdown
# Team minekraft - DataFlow 2025
Bài toán Product Recommendation

## Hướng dẫn cài đặt và chạy project

**Yêu cầu:**

*   Docker và Docker Compose đã được cài đặt trên máy.
*   RAM tối thiểu 32GB.
*   Sử dụng WSL (Windows Subsystem for Linux).

**Các bước thực hiện:**
- Các bước này đã được hướng dẫn trong video đính kèm "huong_dan_chay_code.mp4".

1.  **Giải nén tệp chứa code của bài.**

2.  **Copy file vào trong môi trường WSL.**

3.  **Copy file data vào thư mục `workspace`.**

4.  **Mở WSL terminal ở thư mục đã copy và chạy lệnh sau:**

    ```bash
    docker-compose up --build
    ```

    Lệnh này sẽ build và khởi chạy các container được định nghĩa trong file `docker-compose.yml`.

5.  **Kết nối đến Jupyter Server:**

    *   Mở Visual Studio Code.
    *   Kết nối đến Jupyter server trên Docker với URL sau:

        ```
        http://127.0.0.1:8888/tree?token=mysecrettoken
        ```

6.  **Chạy Notebooks:**

    *   Mở và chạy lần lượt hai file notebook sau:
        *   `data_ana.ipynb`
        *   `data_cleaning_and_feature_engineering.ipynb`
    *   Sử dụng chức năng "Run All" để chạy tất cả các cell trong mỗi notebook và xem kết quả.

7.  **Chạy Model:**

    *   Model sẽ được chạy trên Kaggle.
    *   Link dẫn đến Kaggle Notebook: [Kaggle Notebook](https://www.kaggle.com/code/hctingnht/team-minekraft-dataflow2025?scriptVersionId=224259196).
    *   Kết quả của model sẽ được trình bày chi tiết trong báo cáo.
```