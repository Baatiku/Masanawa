.class public Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;
.super Lcom/opay/face/common/view/dialog/BaseDialog;
.source "QuitTwoMotionDialog.java"


# instance fields
.field public i:Lcom/opay/face/common/view/RoundImageView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;


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

.method public static synthetic c(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->h(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->f(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->g(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
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

.method private synthetic g(Landroid/view/View;)V
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

.method private synthetic h(Landroid/view/View;)V
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
    sget v0, Lcom/opay/face/R$layout;->dialog_quit2_motion:I

    .line 9
    .line 10
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/opay/face/R$id;->messageTv:I

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
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->c:Landroid/widget/TextView;

    .line 22
    .line 23
    sget p1, Lcom/opay/face/R$id;->sampleIv:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/opay/face/common/view/RoundImageView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 32
    .line 33
    sget p1, Lcom/opay/face/R$id;->sampleIv1:I

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
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->i:Lcom/opay/face/common/view/RoundImageView;

    .line 42
    .line 43
    sget p1, Lcom/opay/face/R$id;->textV1:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->j:Landroid/widget/TextView;

    .line 52
    .line 53
    sget p1, Lcom/opay/face/R$id;->textV2:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->k:Landroid/widget/TextView;

    .line 62
    .line 63
    sget p1, Lcom/opay/face/R$id;->closeIv:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Licc;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Licc;-><init>(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    sget p1, Lcom/opay/face/R$id;->retryBtn:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Ljcc;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Ljcc;-><init>(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    sget p1, Lcom/opay/face/R$id;->quitBtn:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v0, Lkcc;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lkcc;-><init>(Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public setMotionState(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/opay/face/common/view/dialog/BaseDialog;->setMotionState(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 18
    .line 19
    sget v0, Lcom/opay/face/R$drawable;->icon_nod1:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->i:Lcom/opay/face/common/view/RoundImageView;

    .line 25
    .line 26
    sget v0, Lcom/opay/face/R$drawable;->icon_nod2:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->j:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string v0, "Head Up"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->k:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v0, "Head Down"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 47
    .line 48
    sget v0, Lcom/opay/face/R$drawable;->icon_turn1:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->i:Lcom/opay/face/common/view/RoundImageView;

    .line 54
    .line 55
    sget v0, Lcom/opay/face/R$drawable;->icon_turn2:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->j:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v0, "Turn Right"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->k:Landroid/widget/TextView;

    .line 68
    .line 69
    const-string v0, "Turn Left"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 76
    .line 77
    sget v0, Lcom/opay/face/R$drawable;->icon_mouth1:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->i:Lcom/opay/face/common/view/RoundImageView;

    .line 83
    .line 84
    sget v0, Lcom/opay/face/R$drawable;->ic_sample:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->j:Landroid/widget/TextView;

    .line 90
    .line 91
    const-string v0, "Open Your Mouth"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->k:Landroid/widget/TextView;

    .line 97
    .line 98
    const-string v0, "Close Your Mouth"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->e:Lcom/opay/face/common/view/RoundImageView;

    .line 105
    .line 106
    sget v0, Lcom/opay/face/R$drawable;->ic_sample:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->i:Lcom/opay/face/common/view/RoundImageView;

    .line 112
    .line 113
    sget v0, Lcom/opay/face/R$drawable;->icon_blink2:I

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->j:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v0, "Open Your Eyes"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/opay/face/common/view/dialog/QuitTwoMotionDialog;->k:Landroid/widget/TextView;

    .line 126
    .line 127
    const-string v0, "Close Your Eyes"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    return-void
.end method
