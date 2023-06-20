
apiVersion: apps/v1
kind: Deployment
metadata:
  name: knote
spec:
  replicas: 1
  selector:
    matchLabels:
      app: knote
      tier: frontend
  template:
    metadata:
      labels:
        app: knote
        tier: frontend
    spec:
      containers:
          image: learnitguide/knotejs
          ports:
            - containerPort  
          env:
              value: mongodb://mongo:27017/dev

apiVersion: v1
kind: Service
metadata:
  name: knote
spec:
  selector:
    app: knote
    tier: frontend

  ports:
    - port
      targetPort
      nodePort
  type: NodePort
