.class public Lcom/opay/face/common/view/dialog/QuitOneDialog;
.super Lcom/opay/face/common/view/dialog/BaseDialog;
.source "QuitOneDialog.java"


# instance fields
.field public i:Landroid/widget/TextView;


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

.method public static synthetic c(Lcom/opay/face/common/view/dialog/QuitOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitOneDialog;->f(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/opay/face/common/view/dialog/QuitOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitOneDialog;->h(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/opay/face/common/view/dialog/QuitOneDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/face/common/view/dialog/QuitOneDialog;->g(Landroid/view/View;)V

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
    .locals 3

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
    sget v0, Lcom/opay/face/R$layout;->dialog_quit1:I

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
    sget p1, Lcom/opay/face/R$id;->subMessageTv:I

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
    iput-object p1, p0, Lcom/opay/face/common/view/dialog/QuitOneDialog;->i:Landroid/widget/TextView;

    .line 32
    .line 33
    iget v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    sget p1, Lcom/opay/face/R$id;->closeIv:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lccc;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lccc;-><init>(Lcom/opay/face/common/view/dialog/QuitOneDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/opay/face/R$id;->retryBtn:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Ldcc;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ldcc;-><init>(Lcom/opay/face/common/view/dialog/QuitOneDialog;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    sget p1, Lcom/opay/face/R$id;->quitBtn:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lecc;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lecc;-><init>(Lcom/opay/face/common/view/dialog/QuitOneDialog;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/text/SpannableString;

    .line 81
    .line 82
    const-string v0, "To protect your account, we use facial verification to confirm that you are the account owner performing this action."

    .line 83
    .line 84
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "protect"

    .line 88
    .line 89
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string v1, "account owner"

    .line 95
    .line 96
    iget v2, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->f:I

    .line 97
    .line 98
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opay/face/common/view/dialog/BaseDialog;->b(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/opay/face/common/view/dialog/BaseDialog;->c:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
