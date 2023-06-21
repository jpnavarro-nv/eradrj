# ERAD-RJ

Bem vindo ao repositório do curso introdutório de OpenACC, lecionado por João Paulo Navarro, Arquiteto de Soluções na NVIDIA.

Para executar os códigos-exemplo, será necessário a instalação do NVIDIA HPC SDK (https://developer.nvidia.com/hpc-sdk), preferencialmente na versão 23.5. Caso opte por uma versão alternativa, considere alterar o caminho padrão utilizado durante as compilações dos exemplos.

## Getting Started

Após concluída a instalação do NVIDIA HPC SDK no diretório `/opt/nvidia/hpc_sdk/Linux_x86_64/23.5/`, não se esqueça ou de adicionar os seguintes comandos no seu `bashrc`, ou executar os comandos a cada novo terminal de trabalho (antes da compilação).

```
$ NVARCH=`uname -s`_`uname -m`; export NVARCH
$ NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS
$ MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/23.5/compilers/man; export MANPATH
$ PATH=$NVCOMPILERS/$NVARCH/23.5/compilers/bin:$PATH; export PATH
$ LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/nvidia/hpc_sdk/Linux_x86_64/23.5/cuda/12.1/lib64/; export LD_LIBRARY_PATH
```
Em caso de dúvidas, entre em contato por e-mail jpnavarro@nvidia.com
