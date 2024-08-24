.class public Lcom/android/camera2/compat/theme/MiThemeCompat;
.super Ljava/lang/Object;
.source "MiThemeCompat.java"


# static fields
.field public static final IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->testCC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getImpl()Lcom/android/camera2/compat/theme/MiThemeInterface;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;

    invoke-direct {v0}, Lcom/android/camera2/compat/theme/common/MiThemeCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addPreference(Landroidx/preference/PreferenceScreen;IZZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/camera2/compat/theme/MiThemeInterface;->addPreference(Landroidx/preference/PreferenceScreen;IZZ)V

    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->create(Landroid/content/Context;)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->destroy()V

    return-void
.end method

.method public static final getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getDeviceWatermark(Ljava/lang/String;FZ)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    return-object p0
.end method

.method public static final getImpl()Lcom/android/camera2/compat/theme/MiThemeInterface;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.camera.BuildConfig"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "THEME_NAME"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.camera2.compat.theme.custom."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/compat/theme/MiThemeInterface;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :catch_1
    :goto_0
    return-object v0
.end method

.method public static final getMiThemeShutterSoundIf()Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getShutterSoundIf()Lcom/android/camera2/compat/theme/common/MiThemeShutterSoundIf;

    move-result-object v0

    return-object v0
.end method

.method public static final getMiThemeWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getWidgetCamera()Lcom/android/camera2/compat/theme/common/MiThemeWidgetCameraInterFace;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationCvLens()Lcom/android/camera2/compat/theme/common/MiThemeOperationCvLensInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationFocus()Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getFragmentOverlay()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final getOperationVendorTag()Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTagIf;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationVendorTag()Lcom/android/camera2/compat/theme/common/MiThemeOperationVendorTagIf;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlayRes(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    return p1
.end method

.method public static getOverlayResBySuffix(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOverlayResByDefaultSuffix(I)I

    move-result p0

    return p0
.end method

.method public static getOverlayResBySuffix(ILjava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOverlayResBySuffix(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getTestStringID()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getTestStringID()I

    move-result v0

    return v0
.end method

.method public static getTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static final getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final geteOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->getOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v0

    return-object v0
.end method

.method public static processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->processPreviewWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public static processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public static setTheme(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/compat/theme/MiThemeCompat;->IMPL:Lcom/android/camera2/compat/theme/MiThemeInterface;

    invoke-interface {v0, p0}, Lcom/android/camera2/compat/theme/MiThemeInterface;->setTheme(Landroid/app/Activity;)V

    return-void
.end method

.method public static final testCC()Z
    .locals 2

    :try_start_0
    const-string v0, "com.android.camera.BuildConfig"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "THEME_CV"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
