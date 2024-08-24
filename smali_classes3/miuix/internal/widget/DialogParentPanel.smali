.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel.java"


# instance fields
.field public mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->setIsInDialogMode(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    move-result p1

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 2
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
