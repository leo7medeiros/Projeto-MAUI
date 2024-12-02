﻿using CommunityToolkit.Maui;
using Microsoft.Extensions.Logging;
using Mopups.Hosting;
using SkiaSharp.Views.Maui.Controls.Hosting;

namespace MauiAppProject
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            MauiAppBuilder mauiAppBuilder = builder
                            .UseMauiApp<App>()
                            .UseMauiCommunityToolkit()
                            .ConfigureMopups()
                            .UseSkiaSharp();

            mauiAppBuilder.ConfigureFonts(fonts =>
                          {
                              fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                              fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                              fonts.AddFont("Roboto-Black.ttf", "RobotoBlack");
                              fonts.AddFont("Roboto-Bold.ttf", "RobotoBold");
                              fonts.AddFont("Roboto-Light.ttf", "RobotoLight");
                              fonts.AddFont("Roboto-Medium.ttf", "RobotoMedium");
                              fonts.AddFont("Roboto-Regular.ttf", "RobotoRegular");
                          });

            // IF DEBUG
            builder.Logging.AddDebug();

            return builder.Build();
        }
    }
}