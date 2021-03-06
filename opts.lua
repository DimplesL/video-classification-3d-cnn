local opts = {}
-- parameters and others config
function opts.parse(arg)
  local cmd = torch.CmdLine()
  cmd:option('--input',      'input', 'Input file path')
  cmd:option('--model',      '', 'Model file path')
  cmd:option('--output',     'output.json', 'Output file path')
  cmd:option('--batch_size', 32, 'Batch Size')
  cmd:option('--gpu_id',     1, 'ID of GPU to use')
  cmd:option('--n_gpus',     2, 'Number of GPUs to use')
  cmd:option('--n_threads',  4, 'Number of threads for multi-thread loading')
  cmd:option('--verbose',    false, '')

  local opt = cmd:parse(arg or {})
  return opt
end

return opts
