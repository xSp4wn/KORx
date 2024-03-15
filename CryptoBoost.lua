-- Conectar-se aos objetos no jogo
local players = game:GetService("Players")
local workspace = game:GetService("Workspace")

-- Função para criar a interface GUI
local function createGUI(player)
    local gui = Instance.new("ScreenGui")
    gui.Parent = player.PlayerGui

    -- Criar botão ESP Line
    local espLineButton = Instance.new("TextButton")
    espLineButton.Name = "ESPLineButton"
    espLineButton.Text = "ESP Line"
    espLineButton.Size = UDim2.new(0, 100, 0, 50)
    espLineButton.Position = UDim2.new(0, 10, 0, 10)
    espLineButton.Parent = gui

    espLineButton.MouseButton1Click:Connect(function()
        -- Lógica para ativar ESP Line
    end)

    -- Criar botão ESP Box
    local espBoxButton = Instance.new("TextButton")
    espBoxButton.Name = "ESPBoxButton"
    espBoxButton.Text = "ESP Box"
    espBoxButton.Size = UDim2.new(0, 100, 0, 50)
    espBoxButton.Position = UDim2.new(0, 10, 0, 70)
    espBoxButton.Parent = gui

    espBoxButton.MouseButton1Click:Connect(function()
        -- Lógica para ativar ESP Box
    end)

    -- Criar botão Hack Computer
    local hackComputerButton = Instance.new("TextButton")
    hackComputerButton.Name = "HackComputerButton"
    hackComputerButton.Text = "Hack Computer"
    hackComputerButton.Size = UDim2.new(0, 150, 0, 50)
    hackComputerButton.Position = UDim2.new(0, 10, 0, 130)
    hackComputerButton.Parent = gui

    hackComputerButton.MouseButton1Click:Connect(function()
        -- Lógica para hackear computador à distância
    end)

    -- Criar botão Become Invisible
    local becomeInvisibleButton = Instance.new("TextButton")
    becomeInvisibleButton.Name = "BecomeInvisibleButton"
    becomeInvisibleButton.Text = "Become Invisible"
    becomeInvisibleButton.Size = UDim2.new(0, 150, 0, 50)
    becomeInvisibleButton.Position = UDim2.new(0, 10, 0, 190)
    becomeInvisibleButton.Parent = gui

    becomeInvisibleButton.MouseButton1Click:Connect(function()
        -- Lógica para se tornar invisível ao monstro
    end)
end

-- Conectar eventos aos jogadores
players.PlayerAdded:Connect(function(player)
    createGUI(player) -- Criar a interface GUI para cada jogador que entra no jogo
end)

end

-- Função para hackear o computador à distância
local function hackComputer(player, computer)
    -- Lógica para hackear o computador à distância
end

-- Função para se tornar invisível ao monstro
local function becomeInvisible(player)
    -- Lógica para tornar o jogador invisível ao monstro
end

-- Conectar eventos aos jogadores
players.PlayerAdded:Connect(function(player)
    createGUI(player) -- Criar a interface GUI para cada jogador que entra no jogo
end)

-- Conectar eventos aos objetos do jogo, como os computadores
workspace.Computers.ChildAdded:Connect(function(computer)
    -- Lógica para permitir que os jogadores hackeiem os computadores quando estiverem próximos
end)

-- Conectar eventos ao monstro (se aplicável)
-- Por exemplo: workspace.Monster.Touched:Connect(function() becomeInvisible(player) end)
workspace.Beast.Touched:Connect(function() becomeInvisible(player) end)
