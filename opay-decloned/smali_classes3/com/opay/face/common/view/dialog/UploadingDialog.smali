.class public Lcom/opay/face/common/view/dialog/UploadingDialog;
.super Lcom/opay/face/common/view/dialog/BaseDialog;
.source "UploadingDialog.java"


# instance fields
.field public i:I

.field public j:Lcom/opay/face/common/view/ProgressSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/opay/face/common/view/dialog/BaseDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/opay/face/common/view/dialog/BaseDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lcom/opay/face/R$layout;->dialog_uploading:I

    .line 9
    .line 10
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const-string p1, "#E8E7E6"

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->i:I

    .line 20
    .line 21
    sget p1, Lcom/opay/face/R$id;->progressSeekBar:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/opay/face/common/view/ProgressSeekBar;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 46
    .line 47
    iget v0, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->i:I

    .line 48
    .line 49
    iget v1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/opay/face/common/view/dialog/UploadingDialog;->c(II)Landroid/graphics/drawable/LayerDrawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 59
    .line 60
    iget v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/opay/face/common/view/dialog/UploadingDialog;->d(I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final c(II)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    .line 44
    .line 45
    const v1, 0x800003

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {p2, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object v0, v1, v3

    .line 59
    .line 60
    aput-object p2, v1, v2

    .line 61
    .line 62
    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    const/high16 p2, 0x1020000

    .line 66
    .line 67
    invoke-virtual {p1, v3, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 68
    .line 69
    .line 70
    const p2, 0x102000d

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method

.method public final d(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/high16 v1, 0x41300000    # 11.0f

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/high16 v1, 0x42000000    # 32.0f

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/high16 v2, 0x41b00000    # 22.0f

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public e(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/opay/face/common/view/ProgressSeekBar;->d(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/UploadingDialog;->j:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/opay/face/common/view/ProgressSeekBar;->e(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
