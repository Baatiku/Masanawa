.class public Lcom/opay/face/common/view/dialog/TimeoutOneDialog;
.super Lcom/opay/face/common/view/dialog/BaseDialog;
.source "TimeoutOneDialog.java"


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;


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

.method public static synthetic c(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->i(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->j(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->l(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->h(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lr3a;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lr3a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lr3a;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

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
    sget v0, Lcom/opay/face/R$layout;->dialog_timeout1:I

    .line 9
    .line 10
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/opay/face/R$id;->textV1:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->i:Landroid/widget/TextView;

    .line 22
    .line 23
    sget p1, Lcom/opay/face/R$id;->messageTv:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->c:Landroid/widget/TextView;

    .line 32
    .line 33
    sget p1, Lcom/opay/face/R$id;->sampleIv:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/opay/face/common/view/RoundImageView;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 42
    .line 43
    sget p1, Lcom/opay/face/R$id;->closeIv:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lble;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lble;-><init>(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/opay/face/R$id;->retryBtn:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Lcle;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcle;-><init>(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    sget p1, Lcom/opay/face/R$id;->quitBtn:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Ldle;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Ldle;-><init>(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    sget p1, Lcom/opay/face/R$id;->otherMethodBtn:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/Button;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->j:Landroid/widget/Button;

    .line 94
    .line 95
    new-instance v0, Lele;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lele;-><init>(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    sget p1, Lcom/opay/face/R$id;->switchCameraBtn:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/Button;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->k:Landroid/widget/Button;

    .line 112
    .line 113
    new-instance v0, Lfle;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lfle;-><init>(Lcom/opay/face/common/view/dialog/TimeoutOneDialog;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final synthetic k(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lr3a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->h:Lr3a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lr3a;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->j:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->k:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setMotionState(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMotionState(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3ea

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x3eb

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x3ed

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->i:Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/TimeoutOneDialog;->i:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v0, "Face the frame"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget p1, Lcom/opay/face/R$drawable;->icon_into_frame:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->setSampleImage(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
