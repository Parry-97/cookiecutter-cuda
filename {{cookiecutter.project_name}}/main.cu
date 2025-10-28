/**
 * @file main.cu
 * @brief {{cookiecutter.description}}
 * @author {{cookiecutter.author}}
 * @chapter {{cookiecutter.chapter}}
 *
 */

#include <stdio.h>

/**
 * @brief CUDA kernel for {{cookiecutter.project_name}}
 *
 * TODO: Implement {{cookiecutter.project_name}} kernel
 *
 * @param input Input data
 * @param output Output data
 * @param n Size of the data
 */
__global__ void {{cookiecutter.project_name}}_kernel(float *input, float *output, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    
    if (i < n) {
        // TODO: Implement kernel logic
        output[i] = input[i];
    }
}

/**
 * @brief Host wrapper function for {{cookiecutter.project_name}}
 *
 * @param h_input Host input data
 * @param h_output Host output data
 * @param n Size of the data
 */
void {{cookiecutter.project_name}}(float *h_input, float *h_output, int n) {
    int size = n * sizeof(float);
    float *d_input, *d_output;
    
    // Allocate device memory
    cudaMalloc((void **)&d_input, size);
    cudaMalloc((void **)&d_output, size);
    
    // Copy data to device
    cudaMemcpy(d_input, h_input, size, cudaMemcpyHostToDevice);
    
    dim3 blockSize;
    dim3 gridSize;

    // Launch kernel
    {{cookiecutter.project_name}}_kernel<<<gridSize, blockSize>>>(d_input, d_output, n);
    
    // Copy result back to host
    cudaMemcpy(h_output, d_output, size, cudaMemcpyDeviceToHost);
    
    // Free device memory
    cudaFree(d_input);
    cudaFree(d_output);
}

/**
 * @brief Main function
 */
int main() {
    printf("{{cookiecutter.project_name}} - CUDA implementation\n");
    printf("Chapter {{cookiecutter.chapter}}: {{cookiecutter.description}}\n\n");
    
    // TODO: Implement test/demo code
    
    return 0;
}
