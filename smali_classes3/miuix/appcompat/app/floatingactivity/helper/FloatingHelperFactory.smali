.class public Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;
.super Ljava/lang/Object;
.source "FloatingHelperFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/SplitUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
