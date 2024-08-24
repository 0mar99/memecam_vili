.class public Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;
.super Ljava/lang/Object;
.source "MiThemeCompatBaseImpl.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeInterface;


# static fields
.field public static final RESOURCE_SUFFIX:Ljava/lang/String; = "_shadow"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/common/MiThemeOperationFragment;

.field public mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/common/MiThemeOperationTab;

.field public miThemeOperationBottom:Lcom/android/camera2/compat/theme/common/MiThemeOperationBottom;

.field public miThemeOperationCvLens:Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;

.field public miThemeOperationFilter:Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;

.field public miThemeOperationFocus:Lcom/android/camera2/compat/theme/common/MithemeOperationFocus;

.field public miThemeOperationManual:Lcom/android/camera2/compat/theme/common/MiThemeOperationManual;

.field public miThemeOperationMimoji:Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;

.field public miThemeOperationPanel:Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;

.field public miThemeOperationTips:Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;

.field public miThemeOperationTop:Lcom/android/camera2/compat/theme/common/MiThemeOperationTop;

.field public miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlert;

.field public miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;

.field public miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTag;

.field public miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResource;

.field public miThemeOperationZoom:Lcom/android/camera2/compat/theme/common/MiThemeOperationZoom;

.field public miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;

.field public miThemeWidgetCamera:Lcom/android/camera2/compat/theme/common/MiThemeWidgetCamera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragment;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragment;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/common/MiThemeOperationFragment;

    .line 3
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottom;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottom;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationBottom:Lcom/android/camera2/compat/theme/common/MiThemeOperationBottom;

    .line 4
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTab;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTab;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/common/MiThemeOperationTab;

    .line 5
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTop;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTop;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTop:Lcom/android/camera2/compat/theme/common/MiThemeOperationTop;

    .line 6
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlert;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlert;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlert;

    .line 7
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationManual;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManual;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationManual:Lcom/android/camera2/compat/theme/common/MiThemeOperationManual;

    .line 8
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTips:Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;

    .line 9
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoom;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoom;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationZoom:Lcom/android/camera2/compat/theme/common/MiThemeOperationZoom;

    .line 10
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationPanel:Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;

    .line 11
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeWidgetCamera;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeWidgetCamera;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeWidgetCamera:Lcom/android/camera2/compat/theme/common/MiThemeWidgetCamera;

    .line 12
    new-instance v0, Lcom/android/camera2/compat/theme/common/MithemeOperationFocus;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MithemeOperationFocus;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationFocus:Lcom/android/camera2/compat/theme/common/MithemeOperationFocus;

    .line 13
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;

    .line 14
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationFilter:Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;

    .line 15
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResource;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResource;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResource;

    .line 16
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;

    .line 17
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationMimoji:Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;

    .line 18
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTag;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTag;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTag;

    .line 19
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationCvLens:Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;

    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/PreferenceScreen;IZZ)V
    .locals 0

    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFragmentOverlay()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mMiThemeOperationFragment:Lcom/android/camera2/compat/theme/common/MiThemeOperationFragment;

    return-object p0
.end method

.method public getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationBottom:Lcom/android/camera2/compat/theme/common/MiThemeOperationBottom;

    return-object p0
.end method

.method public getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationCvLens:Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLens;

    return-object p0
.end method

.method public getOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationFilter:Lcom/android/camera2/compat/theme/common/MiThemeOperationFilter;

    return-object p0
.end method

.method public getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationFocus:Lcom/android/camera2/compat/theme/common/MithemeOperationFocus;

    return-object p0
.end method

.method public getOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationManual:Lcom/android/camera2/compat/theme/common/MiThemeOperationManual;

    return-object p0
.end method

.method public getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationMimoji:Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;

    return-object p0
.end method

.method public getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationPanel:Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;

    return-object p0
.end method

.method public getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mMiThemeOperationModeSelect:Lcom/android/camera2/compat/theme/common/MiThemeOperationTab;

    return-object p0
.end method

.method public getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTips:Lcom/android/camera2/compat/theme/common/MiThemeOperationTips;

    return-object p0
.end method

.method public getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTop:Lcom/android/camera2/compat/theme/common/MiThemeOperationTop;

    return-object p0
.end method

.method public getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTopAlert:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlert;

    return-object p0
.end method

.method public getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationTopMenu:Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenu;

    return-object p0
.end method

.method public getOperationVendorTag()Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTagIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationVendorTag:Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTag;

    return-object p0
.end method

.method public getOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationZoom:Lcom/android/camera2/compat/theme/common/MiThemeOperationZoom;

    return-object p0
.end method

.method public getOverlayResByDefaultSuffix(I)I
    .locals 0

    return p1
.end method

.method public getOverlayResBySuffix(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method public getShutterSoundIf()Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeShutterSoundBase:Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundBase;

    return-object p0
.end method

.method public getTestStringID()I
    .locals 0

    const p0, 0x7f12052e

    return p0
.end method

.method public getTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    return-object p2
.end method

.method public getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeOperationVideoResource:Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResource;

    return-object p0
.end method

.method public getWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;->miThemeWidgetCamera:Lcom/android/camera2/compat/theme/common/MiThemeWidgetCamera;

    return-object p0
.end method

.method public processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    return-void
.end method

.method public setTheme(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
